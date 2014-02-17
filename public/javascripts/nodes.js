// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// require jquery
// require jquery_ujs

$( document ).ready(function() {
  $("#header").append('Script loaded')
});

var rowIndex = 0
$("#add_table_row").click(function () {
  $("#header").append('onclick event activated')
  rowIndex++
  var newRow = $('#node_table_row').clone().prop({id: 'node_table_row'+rowIndex});
  newRow.$('#node_table_row_head').prop({ id: 'node_table_row_head'+rowIndex, name: 'node[table][row'+rowIndex+'][head]'});
  newRow.$('#node_table_row_tail').prop({ id: 'node_table_row_tail'+rowIndex, name: 'node[table][row'+rowIndex+'][tail]'});
  newRow.appendTo('#node_table_row'+(rowIndex - 1))
});