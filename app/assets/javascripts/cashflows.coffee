

   $(document).on "turbolinks:load", ->
        $('#cashflows_table').dataTable 

            processing: true
            serverSide: true
            select: true
            ajax: $('#cashflows_table').data('source')
            url: 'cashflows/index.html.erb'
            type: 'POST'
            pagingType: 'full_numbers'
            columns: [

                { searchable: true,  orderable: true, data: 'date' },
                { searchable: true, orderable: false, data: 'description' },
                 { searchable: true, visible: true, orderable: true, data: 'name' },
                { searchable: true, orderable: true, data: 'amount' },
                { searchable: true, visible: false, orderable: true, data: 'created_at' },
                { ssearchable: true, visible: false, orderable: true, data: 'updated_at' },
                { searchable: false, visible: false, orderable: false, data: 'user_id' },
               
            ]
        
        
          


        $('#datepicker').datetimepicker format: 'DD/MM/YYYY'



        
       $("a[data-remote]").on "ajax:success", (e, data, status, xhr) ->
            alert "The article was deleted."
            ('#cashflow_table').dataTable.fnDestroy
   $(document).on "turbolinks:load", ->
        $('#form-show').click ->
            $('#form-section').toggle()
            
    $(document).on "turbolinks:load", ->
        $('#form-hide').click ->
            $('#form-section').slideUp()
            false
        