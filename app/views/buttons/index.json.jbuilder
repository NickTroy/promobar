json.array!(@buttons) do |button|
  json.extract! button, :id, :text, :shape, :color, :hover, :font, :size, :tracking, :leading, :font_regular, :font_bold, :font_italic, :text_color, :text_animation, :bar_size, :bar_position, :bar_aligment, :display_delay, :url_link, :blank, :enable_on_mobile
  json.url button_url(button, format: :json)
end
