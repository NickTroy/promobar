$ ->
  $('.promobar_switcher').click ->
    if $(this).attr("value") == "BANNER ON" 
      promobar_show = false
      $(this).attr("value", "BANNER OFF")
    else
      $(this).attr("value", "BANNER ON")
      promobar_show = true
    id = $(this).attr("id")
    $.ajax "/promobars/#{id}.json",
      type: 'POST'
      dataType: 'json'
      data: 
        _method: 'PUT'
        "promobar[promobar_show]": promobar_show
      success: () ->
        alert("success")
