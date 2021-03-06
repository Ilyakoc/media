<?php
/**
 * Настройки Услуг
 * 
 */
use common\components\helpers\HArray as A;

class ArticlesSettings extends \settings\components\base\SettingsModel
{
	/**
	 * SEO
	 */
	public $meta_title;
	public $meta_desc;
	public $meta_key;
	public $meta_h1;

	/**
	 * @var boolean для совместимости со старым виджетом
	 * редактора admin.widget.EditWidget.TinyMCE
	 */
	public $isNewRecord=false;

	public $quantity_on_page= 12;
	
	/**
	 * Для совместимости со старым виджетом
	 * редактора admin.widget.EditWidget.TinyMCE
	 */
	public function tableName()
	{
		return 'articles_settings';
	}
	
	/**
	 * (non-PHPdoc)
	 * @see \common\components\base\FormModel::behaviors()
	 */
	public function behaviors()
	{
		return A::m(parent::behaviors(), [
		]);
	}

	/**
	 * (non-PHPdoc)
	 * @see \settings\components\base\SettingsModel::rules()
	 */
	public function rules()
	{
		return $this->getRules([
			['meta_h1, meta_title, meta_key, meta_desc, quantity_on_page', 'safe'],
		]);
	}
	
	/**
	 * (non-PHPdoc)
	 * @see \settings\components\base\SettingsModel::attributeLabels()
	 */
	public function attributeLabels()
	{
		return $this->getAttributeLabels([
			'meta_h1'=>'H1',
			'meta_title' => 'Meta Title',
			'meta_key' => 'Meta Keywords',
			'meta_desc' => 'Meta Description',
			'quantity_on_page'=>'Количество статей на странице',
		]);
	}

}
