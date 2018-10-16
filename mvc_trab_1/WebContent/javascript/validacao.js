$(document).ready(function() {
	console.log('Ready disparado');

	$('#quantidade').keyup(function() {
		var valor = document.getElementById("quantidade").value;

		if ($.isNumeric(valor)) {
			console.log("é numero");
		} else {
			alert("Não permitido letras, somente números!")
			$(this).val(this.value.replace(/\D/g, ''));
		}
	});

	$("#form").validate({
		rules : {
			"palavra" : {
				required : true,
				minlength : 1
			},
			"quantidade" : {
				required : true,
			}
		},
		messages : {
			"palavra" : {
				required : "Por favor, entre com a palavra!"
			},
			"quantidade" : {
				required : "Por favor, entre com a quantidade!"
			}
		},
		submitHandler : function(form) {
			return true;
		}
	});
});
