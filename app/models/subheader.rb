class Subheader < ActiveRecord::Base
  belongs_to :promobar

  def animation animation_number
    "animated infinite #{{ 'bounceInLeft' => 1, 'fadeIn' =>  2, 'bounce' => 3 }.key(animation_number.to_i)}"
  end

  def text_align align
    { 'CENTER' => 1, 'LEFT' =>  2, 'RIGHT' => 3 }.key(align.to_i)
  end

  def link_blank
    self.url_link_blank == 1 ? '_blank' : '_self'
  end
end
