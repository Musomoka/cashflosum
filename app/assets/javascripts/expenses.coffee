
$(document).on 'turbolinks:load', ->

  $('#expensesTable').DataTable()


  $('#datepicker').datetimepicker format: 'DD/MM/YYYY'
  
