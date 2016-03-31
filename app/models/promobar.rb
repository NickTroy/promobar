class Promobar < ActiveRecord::Base
  validates :name,
            presence: true

  validates :url_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true

  validates :promobar_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true

  # before_save :generate_script
  after_destroy :script_cleanup
  after_create :set_order_number
  has_one :subheader, dependent: :destroy

  def animation animation_number
    "animated options #{{ 'bounceInLeft' => 1, 'fadeIn' =>  2, 'bounce' => 3 }.key(animation_number.to_i)}"
  end

  def text_align align
    { 'CENTER' => 1, 'LEFT' =>  2, 'RIGHT' => 3 }.key(align.to_i)
  end
  
  def promobar_height height
    { '100px' => 1, '100px' => 2 }.key(height.to_i)
  end
  def line_height height
    { '100px' => 1, '45px' => 2 }.key(height.to_i)
  end
  def display_bar
    self.promobar_show ? 'visible' : 'hidden'
  end

  def display_button
    self.button_on ? 'inline-block' : 'none'
  end

  def link_blank
    self.url_link_blank == 1 ? '_blank' : '_self'
  end

  def enabled_on_mobile?
    self.enable_on_mobile == 1 ? true : false
  end
  
  def display_x
    self.x_button_on == 1 ? 'inline-block' : 'none'
  end

  def promobar_link_onclick
    if self.promobar_link == ""
      return ""
    else 
      if self.promobar_link_blank == 0
        return "onclick=location.href='" + self.promobar_link + "';"
      elsif !(self.promobar_link_blank.nil?)
        return "onclick=window.open('" + self.promobar_link + "','newWindow');"
      else
        return ""
      end
    end
  end 
  private

=begin
    # Creates a promotion bar script
    def generate_script
      scripts = ShopifyAPI::ScriptTag.all

      unless scripts.any?
        script = ShopifyAPI::ScriptTag.new
        script.event = "onload"
        script.src = script_promobars_url
        script.save
      end
    end
=end

    # Cleanups a promotion bar script
    def script_cleanup
      scripts = ShopifyAPI::ScriptTag.all

      if scripts.any?
        scripts.each do |script|
          script.destroy
        end
      end
    end
    
    def set_order_number
      shop_domain = self.shop_domain
      self.order_number = Promobar.where(bar_type: self.bar_type, promobar_show: true, shop_domain:shop_domain).count 
      self.save
    end


end
