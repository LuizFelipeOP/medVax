var $myForm = $('.validation')

formatData();

$myForm.submit(function(event){
       
   event.preventDefault();
   var x = TestaCPF(event.currentTarget.cpf.value);
   if(!x) {
          alert("Informe um CPF valido");
   }else{
       var dataNascimentoCast = event.currentTarget.data_nascimento.value;
       var newData = dataNascimentoCast.replace(/\\/g, '-');
       event.currentTarget.data_nascimento.value = newData;
       alert("Dados salvos");
       var $formData = $(this).serialize()
       var $thisURL = $myForm.attr('data-url') || window.location.href // or set your own url
              $.ajax({
                     method: "POST",
                     url: $thisURL,
                     data: $formData,
                     // success: function(data) { 
                     //        },
                     // error: function(ts) { 
                     //         alert(ts.responseText) 
                     //         }
              })
       formatData()
       }
})
 function formatData(){
              
       var dataNascimentoCast = document.getElementById('id_data_nascimento').value;
       var newData = dataNascimentoCast.replace(/-/g, String.fromCharCode(92));
       document.getElementById('id_data_nascimento').value = newData;
 }

function TestaCPF(strCPF) {
   var Soma;
   var Resto;
   Soma = 0;
          if (strCPF == "00000000000") return false;

          for (i=1; i<=9; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i);
                 Resto = (Soma * 10) % 11;

          if ((Resto == 10) || (Resto == 11))  Resto = 0;
          if (Resto != parseInt(strCPF.substring(9, 10)) ) return false;

          Soma = 0;
          for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i);
                 Resto = (Soma * 10) % 11;

          if ((Resto == 10) || (Resto == 11))  Resto = 0;
          if (Resto != parseInt(strCPF.substring(10, 11) ) ) return false;
   return true;
}

function handleFormSuccess(data, textStatus, jqXHR){
    console.log("sucess")
    console.log(data)
    console.log(textStatus)
    console.log(jqXHR)
    //$myForm.reset(); // reset form data
}

function handleFormError(jqXHR, textStatus, errorThrown){
    console.log("sucess")
    console.log(jqXHR)
    console.log(textStatus)
    console.log(errorThrown)
}