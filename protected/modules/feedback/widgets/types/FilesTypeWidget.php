<?php
/**
 * Email type widget
 *
 */
namespace feedback\widgets\types;

class FilesTypeWidget extends BaseTypeWidget
{
	/**
	 * (non-PHPdoc)
	 * @see \feedback\widgets\types\BaseTypeWidget::run()
	 */
	public function run($name, \feedback\components\FeedbackFactory $factory, \CActiveForm $form)
	{
		$this->render($this->getView('files'), compact('name', 'factory', 'form'));
	}
}
