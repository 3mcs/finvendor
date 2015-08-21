var Vendor = function () {
    return {
		onSubmit: function(){},
        //main function to initiate the module
        init: function () {
        	alert('vemula--');
        	$("#vendor_submit_form").validate({
                doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
                errorElement: 'span', //default input error message container
                errorClass: 'validate-inline', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                rules: {
                	"uname": {
						required : true
					},
					"password" : {
						required : true
					},
					"fname" : {
						required : true
					},
					"lname": {
						required : true
					},
					"email" : {
						required : true
					},
					"telephone" : {
						required : true
					},
					"company" : {
						required : true
					},
					"companytype" : {
						required :{depends: function(element) {
				            if($('#select_field').val() == '' ||  $("#companytype").val() == '-SELECT-'){
		                        //Set predefined value to blank.
		                        $('#companytype').val('');
		                    }
		                    return true;
				        }}
					},
					"tags" : {
						required : true
					}
                },
                messages: {
                	"uname": {
						required : "This field is required"
					},
					"password" : {
						required : "This field is required"
					},
					"fname" : {
						required : "This field is required"
					},
					"lname": {
						required : "This field is required"
					},
					"email" : {
						required : "This field is required"
					},
					"telephone" : {
						required : "This field is required"
					},
					"company" : {
						required : "This field is required"
					},
					"companytype" : {
						required : "This field is required"
					},
					"tags" : {
						required : "This field is required"
					}
                },

                errorPlacement : function(error, element) {
					$(element).closest('.input').addClass('error');
					error.insertAfter(element);
				},
				highlight : function(element) {
					// hightlight error inputs
					$(element).closest('.help-inline').removeClass('ok');
					// display OK icon
					$(element).closest('.input').removeClass('success').addClass('error');
					// set error class to the control group
				},
				unhighlight : function(element) {
					// revert the change done by hightlight
					$(element).closest('.input').removeClass('error');
					$('.alert-error', $(this)).hide();
					// set error class to the control group
				},
				success : function(form) {
					$(this).find('label.success, label.error').remove();
					$(this).find('error').remove();
					$('.alert-error', $(this)).hide();
				},
                submitHandler: function (form) {
                	alert('rayulu vemula---:');
                    document.getElementById("vendor_submit_form").submit();
                    //add here some ajax code to submit your form or just call form.submit() if you want to submit the form without ajax
                }

            });
 $('#form_wizard_2').find('.button-previous').hide();
            $('#form_wizard_2 .button-submit').click(function () {
                alert('Finished! Hope you like it :)');
            }).hide();

            $('#form_wizard_1').find('.button-previous').hide();
            $('#form_wizard_1 .button-submit').click(function () {
             //   alert('Finished! Hope you like it :)');
            }).hide();
        return this;
        }

    };

}();

 
function validateUsername() {
	var username= $("#signup-username").val();
	if(username !=null && username.length > 0){
		uname = encode64(username);
		$.ajax({
			type: 'POST',
			url:  "checkregisteruservalidation?VEuLA="+uname,
			cache: false,
			success: function(output) {
				if (output.match("true")) {
					document.getElementById("errMessage").innerHTML = "Username already registered.";
				} else {
					document.getElementById("errMessage").innerHTML = "";
				}
			}
		});
	}
}
function validateEmailId() {
	var emailId = document.getElementById("signup-email").value;
	if(emailId !='' && emailId.length > 0){
		emailId = encode64(emailId);
		var url = "emailvalidation?VeM="+emailId;
		$.ajax({
			type: 'POST',
			url: url,
			cache: false,
			success: function(output) {
				if (output.match("success")) {	
					document.getElementById("emailerrMsg").innerHTML = "Please enter company with valid emailId.";
				} else if (output.match("failed")) {
					document.getElementById("emailerrMsg").innerHTML = "";
					$.ajax({
						type: 'POST',
						url: "checkemailvalidationexist?RAyVE="+emailId,
						cache: false,
						success: function(output) {
							if (output.match("true")) {	
								 document.getElementById("emailexistMsg").innerHTML = "Email already registered.";
							} else {
								document.getElementById("emailexistMsg").innerHTML = "";
							}
						}
					});
				}
			}
		});
	}
	
}
function userRegisteration(){
	var username= $("#signup-username").val();
	var password= $("#signup-password").val();
	var email= $("#signup-email").val();
	var company= $("#signup-company").val();
	var companytype= $("#signup-companytype").val();
	var tags= $("#sigup-tags").val();
	var termsandcondition=document.getElementById('accept-terms').value;
	
	if(username != '' && username.length > 0 && password != '' && password.length > 0  && email != '' &&  email.length > 0
			&& company != '' && company.length > 0 && companytype != '' && companytype.length > 0 &&  tags != '' && tags.length > 0 ) {
		if(termsandcondition != '' && document.getElementById('accept-terms').checked == true && termsandcondition.match('acceptterms')){
			username = encode64(username);
			password = encode64(password);
			email = encode64(email);
			document.getElementById("errMessageforMandatory").innerHTML = "";
			document.getElementById("errMessagefortermsandconditions").innerHTML = "";
			$.ajax({
				type: 'POST',
				url:  "registration?VEuMlA="+username+"&RaYulU="+password+"&ChEnGA="+email+"&LaKS="+company+"&ZaB="+companytype+"&NoR="+tags,
				cache: false,
				success: function(output) {
					if (output.match("true")) {
						document.getElementById("errMessageforMandatory").innerHTML = " ";
						document.getElementById("sucessMessage").innerHTML = "You've registered successfully..!";
						document.getElementById("cd-login").style.display="block";
						document.getElementById("cd-signup").style.display="none";
					} else {
						document.getElementById("sucessMessage").innerHTML = " ";
						document.getElementById("errMessageforMandatory").innerHTML = " ";
					}
				}
			});
		}else{
			document.getElementById("errMessageforMandatory").innerHTML = "";
			document.getElementById("errMessagefortermsandconditions").innerHTML = "Please accept the terms and conditions.";
		}
	}else{
		document.getElementById("errMessageforMandatory").innerHTML = "Please enter all the fields are mandatory.";
		
	}
	
}

