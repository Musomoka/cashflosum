

   $ -> 
        $('#expenses-table').dataTable
            
            processing: true
            serverSide: true

            ajax: $('#expenses-table').data('source') 
            pagingType: 'full_numbers'                                                                                
            columns: [ 
                {searchable: false, orderable: false, data: 'id' }, 
                {searchable: true, orderable: true, data: 'Date' },
                {searchable: true, orderable: true, data: 'AccountName'}, 
                {searchable: true, orderable: true, data: 'Description'}, 
                {searchable: true, orderable: true, data: 'created_at' },
                {ssearchable: true, orderable: true, data: 'updated_at' },  
                {searchable: false, orderable: false, data: 'user_id' },
                {searchable: false, orderable: false, data: 'category_id'},
                {searchable: true, orderable: true,data: 'amount'}             

            ]
            
          


        $('#datepicker').datetimepicker format: 'DD/MM/YYYY'



        $("a[data-remote]").on "ajax:success", (event) ->
            alert "The article was deleted."


        $('#showform').click ->
            $("#form_section").slideDown();

        
        $('#from-hide').click ->
            $("#form_section").slideUp();
            false;

       
          