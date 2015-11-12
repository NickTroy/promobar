$ ->
  $('.promobar_switcher').bootstrapSwitch()
  $('.promobar_switcher').click ->
    promobar_show = $(this).attr("data-state")
    id = $(this).attr("id")
    $.ajax "/promobars/#{id}.json",
      type: 'POST'
      dataType: 'json'
      data: 
        _method: 'PUT'
        "promobar[promobar_show]": promobar_show
      success: () ->
        alert("success")
    $(this).toggleState()
