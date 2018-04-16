

   $ -> 
        $('#expenses-table').dataTable 

            processing: true
            serverSide: true


            ajax: $('#expenses-table').data('source')
            url: 'expenses/create.html.erb'
            type: 'POST'
            pagingType: 'full_numbers'
            columns: [
                { searchable: false, visible: false, orderable: false, data: 'id' },
                { searchable: true,  orderable: true, data: 'Date' },
                { searchable: true, orderable: true, data: 'AccountName' },
                { searchable: true, orderable: true, data: 'Description' },
                { searchable: true, visible: false, orderable: true, data: 'created_at' },
                { ssearchable: true, visible: false, orderable: true, data: 'updated_at' },
                { searchable: false, visible: false, orderable: false, data: 'user_id' },
                { searchable: true, visible: true, orderable: true, data: 'category_id' },
                { searchable: true, orderable: true, data: 'amount' }

            ]

        
          


        $('#datepicker').datetimepicker format: 'DD/MM/YYYY'



        $("a[data-remote]").on "ajax:success", (event) ->
            alert "The article was deleted."


        $('#showform').click ->
            $("#form_section").slideToggle()

        
        $('#from-hide').click ->
            $("#form_section").slideUp()
            false

        