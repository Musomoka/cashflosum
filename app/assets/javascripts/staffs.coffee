$ -> 

	$('#staff-table').dataTable
	 processing: true
	 serverSide: true

	 ajax: $('#staff-table').data('source')  
	 columns: [
	 	{ data: 'id'},
	    { data: 'name' },
	    { data: 'job_title' },
	    { data: 'bio' },
	    { data: 'avatar'}
	 ]