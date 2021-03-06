json.array!(@promobars) do |promobar|
  json.extract! promobar, :id, :bar_type, :bar_text, :bar_font, :bar_font_size, :bar_tracking, :bar_leading, :bar_text_formatting, :bar_text_color, :bar_background_color, :bar_background_opacity
  json.url promobar_url(promobar, format: :json)
end
