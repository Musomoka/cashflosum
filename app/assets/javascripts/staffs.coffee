$ -> 

	$('#staffs-table').dataTable
	 processing: true
	 serverSide: true

	 ajax: $('#staffs-table').data('source')  
	 columns: [
	 	{searchable: false,  orderable: true, data: 'id'},
	   	{searchable: true,  orderable: true, data: 'name' },
	    {searchable: true,  orderable: true,data: 'job_title' },
	    {searchable: true,  orderable: true, data: 'bio' },
	    {searchable: false,  orderable: false, data: 'avatar'}
	    {visible: false, searchable: false,  orderable: false, data: 'created_at'}
	    {visible: false, searchable: false,  orderable: false, data: 'updated_at'}
	 ]