# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> $('.bar-text-color').minicolors theme: 'bootstrap', defaultValue: $(".bar-text-color").attr("value") || "#000000", change: (value) ->
    $('.bar-text-color').attr("value", value)

$ -> $('.bar-background-color').minicolors theme: 'bootstrap', defaultValue: $(".bar-background-color").attr("value") || "#ffffff", change: (value) ->
  $('.bar-background-color').attr("value", value)

$ -> $('.button-background-color').minicolors theme: 'bootstrap', defaultValue: $(".button-background-color").attr("value") || "#ffffff", change: (value) ->
  $('.button-background-color').attr("value", value)

$ -> $('.button-hover').minicolors theme: 'bootstrap', defaultValue: $(".button-hover").attr("value") || "#000000", change: (value) ->
  $('.button-hover').attr("value", value)

$ -> $('.button-text-color').minicolors theme: 'bootstrap', defaultValue: $(".button-text-color").attr("value") || "#000000", change: (value) ->
  $('.button-text-color').attr("value", value)

$ -> $( ".bar-opacity-slider" ).slider range: "max", min: 1, max: 100, value: $(".bar-opacity-switcher").attr("value"), slide: (event, ui) ->  
  $(".bar-opacity-switcher").attr("value", ui.value)
  $(".bar-opacity-value").html(ui.value + "%")
$ ->
  $('.add_subheader').bootstrapSwitch()
  $('.add_subheader').on 'switchChange.bootstrapSwitch', (event, state) -> 
    promobar_show = !state
    id = $(this).attr("id")
    $('form[id^="edit_subheader_"]').toggle()
    $.ajax "/promobars/#{id}/subheader.json",
      type: 'POST'
      dataType: 'json'
      data: 
        _method: 'PUT'
        "subheader[promobar_show]": promobar_show
      success: () ->
        alert("success")
