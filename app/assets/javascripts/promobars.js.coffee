# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> $('.header-bar-text-color').minicolors theme: 'bootstrap', change: (value) -> $('.header-bar-text-color').attr("value", value)