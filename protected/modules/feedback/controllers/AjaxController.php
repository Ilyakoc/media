<?php
/**
 * Ajax frontend controller
 * 
 */
namespace feedback\controllers;

use \AttributeHelper as A;
use \feedback\components\controllers\FrontController;
use \feedback\components\FeedbackFactory;
use common\components\helpers\HEvent;

class AjaxController extends FrontController
{
	/**
	 * (non-PHPdoc)
	 * @see \feedback\components\controllers\FrontController::filters()
	 */
	// @todo filters!
// 	public function filters()
// 	{
// 		return /*\CMap::mergeArray(parent::filters(), */array(
// 			'ajaxOnly + send'
// 		)/*)*/;
// 	} 
	
	/**
	 * (non-PHPdoc)
	 * @see CController::behaviors()
	 */
	public function behaviors()
	{
		return array(
			'AjaxControllerBehavior' => array(
				'class'=>'\AjaxControllerBehavior',
			)
		);
	} 
	
	/**
	 * Send 
	 */
	public function actionSend()
	{
		$result['success'] = false;


		 
		$feedbackId = \Yii::app()->request->getParam('feedbackId');
		$formId = \Yii::app()->request->getPost('formId');
		
		$factory = FeedbackFactory::factory($feedbackId);
		
		$isAjaxValidation = $this->isAjaxValidation($formId);
		$model = $factory->getModelFactory()->getModel();
		$model->setScenario($isAjaxValidation ? 'active' : 'insert');
		 
		$className = preg_replace('/\\\\+/', '_', get_class($model));
		$values = \Yii::app()->request->getPost($className);
		if($values) {
			// Задаем значения
			foreach($factory->getModelFactory()->getAttributes() as $name=>$typeFactory) {
				$model->$name = $typeFactory->getModel()->normalize(A::get($values, $name));
			}
			 
			if($isAjaxValidation) {
				$this->performAjaxValidation($model, $formId);
			}
			elseif($model->validate()) {
			    $tampArr = [];
                foreach ($_FILES as $file) {
                    foreach ($file['name'] as $key => $item) {
                        if($item){
                            $upload = \CUploadedFile::getInstances($model, $key);
                            if(count($upload) == 0) {
                                $upload = \CUploadedFile::getInstance($model, $key);
                                $model->$key = $this->fileSave($upload);
                            } else {
                                foreach ($upload as $k => $u){
                                    $tampArr[$k] = $this->fileSave($u);
                                }
                                $tempKey = $key . '[]';
                                $model->$tempKey = serialize($tampArr);
                            }
                        }
                    }
                }
                $templateOut = $this->renderPartial('//../modules/feedback/views/default/callback', compact([]), true, true);
                $templateOut = strip_tags($templateOut, '<div><p>');
                $templateOut = preg_replace("~[\r\n]~", "",$templateOut);
                $templateOut = preg_replace("/\/\*\*\//", "",$templateOut);
//                print_r($templateOut);die();
				$result['success'] = $model->save(false);
				$result['message'] = $result['success'] ? 'Ваша заявка принята.' : 'Возникла ошибка на сервере, повторите подачу заявки позже.';
                $result['html'] = $templateOut;
				// Отправка уведомления на почту
				if($result['success']) {
                    HEvent::raise('OnFeedbackNewMessageSuccess', compact('factory', 'model'));
				}
				
				//$this->createAction('captcha')->refresh();
			}
		}
		echo \CJSON::encode($result);
		\Yii::app()->end();
	}

	protected function fileSave($upload)
    {
        if($upload) {
            if ($upload->size < 20971520 && in_array($upload->extensionName, ['txt', 'doc', 'docx', 'pdf'])) {
                $fileName = \coreHelper::generateHash() .'.'. strtolower($upload->extensionName);
                $upload->saveAs($_SERVER['DOCUMENT_ROOT'] . '/files/feedback/' . $fileName);
                return $fileName;
            } else {
                $result['success'] = false;
                $result['message'] = 'Загружаймый файл должен быть меньше 20 МБ и именть расширение txt, doc, docx или pdf';
                echo \CJSON::encode($result);
                \Yii::app()->end();
            }
        } else {
            return '';
        }
    }
}
