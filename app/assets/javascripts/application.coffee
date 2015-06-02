//= require jquery
//= require jquery_ujs

//= require bootstrap-datepicker-1.4.0/js/bootstrap-datepicker
//= require bootstrap-datepicker-1.4.0/locales/bootstrap-datepicker.pt-BR.min

//= require jquery.inputmask.bundle

//= require_tree .

$("input.date-month").datepicker
  language: "pt-BR"
  format: "yyyy-mm-dd"
  minViewMode: 1
  orientation: "top left"

$("input.cpf").inputmask "999.999.999-99"
