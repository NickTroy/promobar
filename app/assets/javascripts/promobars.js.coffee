# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

;(function($, window)
  {

  $(document).on("ready pjax:end", function()
    {
    $(".item-delete-ajax").on("click", function(e)
      {
      e.preventDefault();
  e.stopPropagation();
  if(confirm($(this).data("confirm"))) {
  $.ajax({
      type: "POST",
      url: $(this).attr("href"),
      async: true,
      success: function(data) {
      $.pjax.reload({container: $(".item-delete-ajax").data("wrapper")});
}
});
}
});
});

})(jQuery, window);