/**
 * Feedback frontend script
 */
var FeedbackWidget = {
	/**
	 * @var string error success
	 */
	msgSuccess: "Ваша заявка принята.",

	/**
	 * @var string error message
	 */
	msgError: "Произошла ошибка на сервере, повторите подачу заявки позже.",

	/**
	 * Initialization.
	 */
	init: function(formId) {
	},

	/**
	 * Clone
	 * @link http://www.askdev.ru/javascript/53/%D0%9A%D0%B0%D0%BA-%D0%B2-JavaScript-%D0%BA%D0%BB%D0%BE%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C-%D0%BE%D0%B1%D1%8A%D0%B5%D0%BA%D1%82/
	 */
	clone: function(obj) {
		if(obj == null || typeof(obj) != 'object')
			return obj;
		var temp = new obj.constructor();
		for(var key in obj)
			temp[key] = this.clone(obj[key]);
		return temp;
	},

	/**
	 * After validate handler
	 * @see Yii \CActiveForm
	 */
	afterValidate: function (form, data, hasError)
	{
		$(form).find(".feedback-body").removeClass("success");
		let fileField = $(form).find("input[type=file]");
		const fileExtension = ['txt', 'doc', 'docx', 'pdf'];
		let error = fileField.parent().find('.errorMessage');
		if ($.inArray(fileField.val().split('.').pop().toLowerCase(), fileExtension) == -1) {
			hasError = true;
			error.text('Загружаймый файл должен именть расширение txt, doc, docx или pdf');
			error.show();
			error.parent().show();
		} else {
			error.text('');
			error.hide();
			error.parent().hide();
		}
	    if (hasError) {
	    	$(form).find(".inpt-error").removeClass("inpt-error");
	    	for(var key in data) {
	    		if(key.indexOf('feedback') === 0) {
	    			$(form).find("#"+key).addClass("inpt-error");
					$(form).find("#"+key+"_em_").parent().show();
	    		}
	    	}
	    }
	    else {
			$(form).find(".feedback-submit-button").hide();

			var id = $(form).attr("id");
			var myForm = document.getElementById(id);
			var formData = new FormData(myForm);

			$.ajax({
				url: $(form).attr("action"),
				dataType: 'json',
				cache: false,
				contentType: false,
				processData: false,
				data: formData,
				type: 'post',
				success: function(data){
					if(data.success){
						$(form).find(".feedback-body").addClass("successed");
						$(form).trigger('cms.feedback.sended');
					}
					(function(){
						$(form).find(".inpt-error").removeClass("inpt-error");
						if ((data.html != undefined)) {
							$(form).html(data.html)
						} else {
							var $body = $(form).find(".feedback-body");
							if(!$body.length){
								$body = $(form).find(".feedback-body_anketa");
							}
							var html = $body.html();
							$body.html((data.message != undefined) ? data.message : ((data.success == true) ? FeedbackWidget.msgSuccess : FeedbackWidget.msgError));
						}
					})();
				},
				error: function(){

				}
			});



			// $.post($(form).attr("action"), form.serialize(), function(json) {
			// 	if(json.success){
			// 		$(form).find(".feedback-body").addClass("successed");
			// 		$(form).trigger('cms.feedback.sended');
			// 	}
			// 	(function(){
            //       	$(form).find(".inpt-error").removeClass("inpt-error");
            //       	if ((json.html != undefined)) {
			// 			$(form).html(json.html)
			// 		} else {
			// 			var $body = $(form).find(".feedback-body");
			// 			var html = $body.html();
			// 			$body.html((json.message != undefined) ? json.message : ((json.success == true) ? FeedbackWidget.msgSuccess : FeedbackWidget.msgError));
			// 		}
	        // 		/*
            //       	setTimeout(function(){
            //             $body.removeClass("successed");
            //             $body.html($.parseHTML(html));
            //             if($body.find("[class*='phone']").length) {
			// 										$body.find("[class*='phone']").inputmask({mask: '+7 ( 999 ) 999 - 99 - 99'});
            //             }
            //             $body.find(".feedback-submit-button").show();
            //         },7000);
            //         /**/
            //     })();
		    // }, "json");
	    }

	    return false;
	}
}
