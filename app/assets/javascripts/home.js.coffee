$ ->
  $('.promobar_switcher').bootstrapSwitch()
  $('.promobar_switcher').on 'switchChange.bootstrapSwitch', (event, state) -> 
    promobar_show = !state
    id = $(this).attr("id")
    $.ajax "/promobars/#{id}.json",
      type: 'POST'
      dataType: 'json'
      data: 
        _method: 'PUT'
        "promobar[promobar_show]": promobar_show
      success: () ->
        alert("success")
    $.ajax "/promobars/#{id}/subheader.json",
      type: 'POST'
      dataType: 'json'
      data: 
        _method: 'PUT'
        "subheader[promobar_show]": promobar_show
      success: () ->
        alert("success")
