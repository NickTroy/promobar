$ ->
  $('.promobar_switcher').click ->
    if $(this).attr("value") == "BANNER ON" 
      promobar_show = false
      $(this).attr("value", "BANNER OFF")
    else
      $(this).attr("value", "BANNER ON")
      promobar_show = true
    id = $(this).attr("id")
    $.ajax "/promobars/#{id}",
      type: 'PUT'
      dataType: 'json'
      data: 
        "promobar[promobar_show]": promobar_show
      success: () ->
        alert("success")
