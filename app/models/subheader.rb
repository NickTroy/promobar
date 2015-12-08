class Subheader < ActiveRecord::Base
  belongs_to :promobar

  def animation animation_number
    "animated options #{{ 'bounceInLeft' => 1, 'fadeIn' =>  2, 'bounce' => 3 }.key(animation_number.to_i)}"
  end

  def text_align align
    { 'CENTER' => 1, 'LEFT' =>  2, 'RIGHT' => 3 }.key(align.to_i)
  end

  def link_blank
    self.url_link_blank == 1 ? '_blank' : '_self'
  end

  def enabled_on_mobile?
    self.enable_on_mobile == 1 ? true : false
  end

  def display_button
    self.button_on ? 'inline-block' : 'none'
  end

  def display_bar
    self.promobar_show ? 'visible' : 'hidden'
  end
  
  def display_x
    self.x_button_on == 1 ? 'inline-block' : 'none'
  end
end
