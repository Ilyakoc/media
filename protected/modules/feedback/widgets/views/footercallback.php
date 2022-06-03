<?php
/** @var FeedbackWidget $this */
/** @var FeedbackFactory $factory */
use common\components\helpers\HYii as Y;

Y::js('feedback'.$this->getHash(),
    'var feedback'.$this->getHash().'=FeedbackWidget.clone(FeedbackWidget);feedback'.$this->getHash().'.init("'.$this->id.'");'
);
$fields = $factory->getModelFactory()->getAttributes();
?>
<div id="<?php echo $this->id; ?>" class="<?php echo $this->getOption('html', 'class'); ?>">
		<?php $form = $this->beginWidget('CActiveForm', array(
	        'id' =>  $this->getFormId(),
			'action' => $this->getFormAction(),			
	        'enableClientValidation' => true,
        	'enableAjaxValidation' => true,				
			'clientOptions' => array(
	            'validateOnSubmit' => true,
	            'validateOnChange' => false,
				'afterValidate' => 'js:feedback' . $this->getHash() . '.afterValidate',	
	        ),
			 'htmlOptions'=>array(
                 'enctype'=>'multipart/form-data',
                 'class'=>'form',

             )
	    )); ?>
	    <?php echo CHtml::hiddenField('formId', $this->getFormId()); ?>
	    <? if(is_callable($this->onBefore)) call_user_func($this->onBefore, $factory->getModelFactory()->getModel()); ?>


	    <?php if($this->title): ?>
			<div class="cbHead">
				<span class="iconPhone"></span>
				<h2>Связаться <span class="primary-color">с нами</span></h2>
                <a class="contact-link" href="mailto:<?= D::cms('emailPublic'); ?>"><?= D::cms('emailPublic'); ?></a>

                <div class="address-footer-callback">
                    <span>Адрес:</span><br>
                    <?= HtmlHelper::splitAddress(D::cms('address')) ?>
                </div>
                <div class="phone-footer-callback">
                    <span>Телефон:</span><br>
                    <a class="contact-link-phone" href="tel:<?= preg_replace('/[^0-9+]/', '', D::cms('phone')) ?>"><?= D::cms('phone') ?></a>
                </div>
			</div>
		<?php endif; ?>
	
		<div class="feedback-body">
            <div class="form-ank__input-top">
                <?= $fields['name']->getModel()->widget($factory, $form, $this->params) ?>
                <?= $fields['phone']->getModel()->widget($factory, $form, $this->params) ?>
            </div>
            <div class="form-ank__input">
                <?= $fields['email']->getModel()->widget($factory, $form, $this->params) ?>
                <div class="feedback-file">
                    <label>Прикрепить файл:</label>
                    <?= $fields['files[]']->getModel()->widget($factory, $form, $this->params) ?>
                </div>
            </div>
            <div class="privacy-form">
			<?php
			// Captcha
			if($factory->getModelFactory()->getModel()->useCaptcha) {
				$this->widget('feedback.widgets.captcha.CaptchaWidget');
			}
			?>
			
			<?php echo CHtml::submitButton($factory->getOption('controls.send.title', 'Отправить'), array(
				'class'=>'feedback-submit-button btn',
				'id'=>$factory->getModelFactory()->getModel()->recaptchaBehavior->attachReCaptchaBySubmitButton()
			)); ?>
            </div>
		</div>
	     <?php $this->endWidget(); ?>
</div>
