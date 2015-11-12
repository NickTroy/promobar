$('.button_switcher').click ->
  if $('.promobar_switcher').attr("value") === "BANNER ON" 
    $('.promobar_switcher').attr("value", "BANNER OFF")
  else
    $('.promobar_switcher').attr("value", "BANNER ON")
