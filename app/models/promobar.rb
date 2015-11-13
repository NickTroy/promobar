class Promobar < ActiveRecord::Base
  validates :name,
            presence: true,
            uniqueness: true

  validates :url_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true


  # before_save :generate_script
  after_destroy :script_cleanup

  def font_family font_number
    { 'TIMES NEW ROMAN' => 1, 'ARIAL' =>  2 }.key(font_number.to_i)
  end

  def animation animation_number
    "animated infinite #{{ 'bounceInLeft' => 1, 'fadeIn' =>  2, 'bounce' => 3 }.key(animation_number.to_i)}"
  end

  def font_weight
    self.font_bold == 1 ? 'bold' : 'normal'  
  end

  def italic
    self.font_italic == 1 ? 'italic' : 'normal'  
  end
  
  def underlined
    self.font_underlined == 1 ? 'underline' : 'none'  
  end

  def button_font_weight
    self.button_font_bold == 1 ? 'bold' : 'normal'  
  end

  def button_italic
    self.button_font_italic == 1 ? 'italic' : 'normal'  
  end
  
  def button_underlined
    self.button_font_underlined == 1 ? 'underline' : 'none'  
  end

  def text_align align
    { 'CENTER' => 1, 'LEFT' =>  2, 'RIGHT' => 3 }.key(align.to_i)
  end

  def display_bar
    self.promobar_show ? 'block' : 'none'
  end

  def display_button
    self.button_on ? 'inline-block' : 'none'
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


end
