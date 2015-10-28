# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> $('.header-bar-text-color').minicolors theme: 'bootstrap',
  defaultValue: $(".header-bar-background-color").attr("value") || "#000000", change: (value) ->
    $('.header-bar-text-color').attr("value", value)

$ -> $('.header-bar-text-color').minicolors theme: 'bootstrap',
  defaultValue: $(".header-bar-background-color").attr("value") || "#000000", change: (value) ->
    $('.header-bar-background-color').attr("value", value)