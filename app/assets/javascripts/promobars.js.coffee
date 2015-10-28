# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> $('.header-bar-text-color').minicolors theme: 'bootstrap', defaultValue: $(".header-bar-text-color").attr("value") || "#000000", change: (value) ->
    $('.header-bar-text-color').attr("value", value)

$ -> $('.header-bar-background-color').minicolors theme: 'bootstrap', defaultValue: $(".header-bar-background-color").attr("value") || "#000000", change: (value) ->
  $('.header-bar-background-color').attr("value", value)

$ -> $('.footer-bar-text-color').minicolors theme: 'bootstrap', defaultValue: $(".footer-bar-text-color").attr("value") || "#000000", change: (value) ->
  $('.footer-bar-text-color').attr("value", value)

$ -> $('.footer-bar-background-color').minicolors theme: 'bootstrap', defaultValue: $(".footer-bar-background-color").attr("value") || "#000000", change: (value) ->
  $('.footer-bar-background-color').attr("value", value)

$ -> $( ".header-bar-opacity-slider" ).slider range: "max", min: 1, max: 100, value: $(".header-bar-opacity-switcher").attr("value"), slide: (event, ui) ->
  $(".header-bar-opacity-switcher").attr("value", ui.value)
  $(".header-bar-opacity-value").html(ui.value + "%")

$ -> $( ".footer-bar-opacity-slider" ).slider range: "max", min: 1, max: 100, value: $(".footer-bar-opacity-switcher").attr("value"), slide: (event, ui) ->
  $(".footer-bar-opacity-switcher").attr("value", ui.value)
  $(".footer-bar-opacity-value").html(ui.value + "%")
