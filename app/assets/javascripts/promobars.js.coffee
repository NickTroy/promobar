# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> $('.bar-text-color').minicolors theme: 'bootstrap', defaultValue: $(".bar-text-color").attr("value") || "#000000", change: (value) ->
    $('.bar-text-color').attr("value", value)

$ -> $('.bar-background-color').minicolors theme: 'bootstrap', defaultValue: $(".bar-background-color").attr("value") || "#000000", change: (value) ->
  $('.bar-background-color').attr("value", value)

$ -> $( ".bar-opacity-slider" ).slider range: "max", min: 1, max: 100, value: $(".bar-opacity-switcher").attr("value"), slide: (event, ui) ->
  $(".bar-opacity-switcher").attr("value", ui.value)
  $(".bar-opacity-value").html(ui.value + "%")

