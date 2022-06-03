<?php
/**
 * Обратный звонок
*
* 1 Имя
* 3 Контактный телефон
*/
return array(
	'footercallback' => array(
		'title' => 'Обратная связь',
		'short_title' => 'Обратная связь',
		// Options
		'options' => array(
			'useCaptcha' => false,
			'sendMail' => true,
			'emptyMessage' => 'Заявок нет',
		),
		// Form attributes
		'attributes' => array(
			'name' => array(
				'type' => 'String', // String, Phone, Text, Checkbox, List
				'placeholder' => 'Ваше имя',
				'rules' => array(
					array('name', 'required')
				),
			),
			'phone' => array(
				'type' => 'Phone',
				'rules' => array(
					array('phone', 'required')
				),
			),
            'email' => array(
                'type' => 'email',
                'placeholder' => 'E-mail',
                'rules' => array(
                    array('email', 'required')
                ),
            ),
            'files[]' => array(
                'label' => 'Файл',
                'type' => 'Files',
                'rules' => array(
                    array('files', 'required')
                ),
            ),
//			'privacy_policy2' => array(
//				'label' => 'Нажимая на кнопку "Отправить", я даю согласие на ' . \CHtml::link('<br />обработку персональных данных', ['/site/page', 'id'=>\D::cms('privacy_policy')], ['target'=>'_blank']),
//				'type' => 'Checkbox',
//				'rules' => array(
//					array('privacy_policy', 'required')
//				),
//				'htmlOptions'=>['class'=>'inpt inpt-privacy_policy']
//			),
		),
		// Control buttons
		'controls' => array(
			'send' => array(
				'title' => 'Оставить заявку'
			),
		),
	),
);