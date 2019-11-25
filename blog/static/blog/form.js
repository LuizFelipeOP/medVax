$(document).ready(function(){
    var urlParams = new URLSearchParams(window.location.search);

    get = urlParams.get('q');
    if(get){
        var idValue = get.split("-");
        
        setValuesSelect('#id_usuario', 'id_usuario', idValue[0]);
        setValuesSelect('#id_vacina', 'id_vacina',  idValue[1]);
        setValuesSelect('#id_lote', 'id_lote', idValue[2]);
    
        function setValuesSelect(id, idFind, value){
            $(id).val(value)
            $(id).find('option').not(':selected').remove();
            $(id).disabled = true;
            //document.getElementById(idFind).disabled = true;   
            return
        }
    }
})