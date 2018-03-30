
$(document).on 'turbolinks:load', ->

    jQuery -> 

        $('#expensesTable').DataTable() 


        $('#datepicker').datetimepicker format: 'DD/MM/YYYY'



        $("a[data-remote]").on "ajax:success", (event) ->
            alert "The article was deleted."


        $('#showform').click ->
            $("#form_section").slideDown();


        $('#from-hide').click ->
            $("#form_section").slideUp();
            false;

       
          