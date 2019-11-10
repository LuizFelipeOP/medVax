
alert("sda");
$(document).ready(function(){
    debugger
    var $myForm = $('.submission_form')
    $myForm.submit(function(event){
        event.preventDefault()
        var $formData = $(this).serialize()
        //var $thisURL = $myForm.attr('data-url') || window.location.href // or set your own url
        console.log($formData);
        // $.ajax({
        //     method: "POST",
        //     url: $thisURL,
        //     data: $formData,
        //     success: handleFormSuccess,
        //     error: handleFormError,
        // })
    })

    // function handleFormSuccess(data, textStatus, jqXHR){
    //     console.log(data)
    //     console.log(textStatus)
    //     console.log(jqXHR)
    //     $myForm.reset(); // reset form data
    // }

    // function handleFormError(jqXHR, textStatus, errorThrown){
    //     console.log(jqXHR)
    //     console.log(textStatus)
    //     console.log(errorThrown)
    // }
})
