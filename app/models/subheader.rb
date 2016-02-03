class Subheader < ActiveRecord::Base
  belongs_to :promobar

  validates :url_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true

  validates :subheader_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true


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
  
  def subheader_link_onclick
    if self.subheader_link == ""
      return ""
    else
      if self.subheader_link_blank == 0
        return "onclick=location.href='" + self.subheader_link + "';"
      elsif !(self.subheader_link_blank.nil?)
        return "onclick=window.open('" + self.subheader_link + "','newWindow');"
      else
        return ""
      end
    end
  end

end
