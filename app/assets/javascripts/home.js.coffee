$ ->
  
  switch_state = $('.promobar_switcher').attr("data-state")
  $('.promobar_switcher').bootstrapSwitch('setState', switch_state)
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
