class Promobar < ActiveRecord::Base
  validates :name,
            presence: true,
            uniqueness: true

  validates :url_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true


  # before_save :generate_script
  after_destroy :script_cleanup
  after_create :set_order_number
  has_one :subheader

  def animation animation_number
    "animated options #{{ 'bounceInLeft' => 1, 'fadeIn' =>  2, 'bounce' => 3 }.key(animation_number.to_i)}"
  end

  def text_align align
    { 'CENTER' => 1, 'LEFT' =>  2, 'RIGHT' => 3 }.key(align.to_i)
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

  def self.count_of_headers_on
    Promobar.where(bar_type: 1, promobar_show: true)
  end
  
  def self.count_of_footers_on
    Promobar.where(bar_type: 2, promobar_show: true)
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
      self.order_number = Promobar.where(bar_type: self.bar_type).count 
      self.save
    end


end
