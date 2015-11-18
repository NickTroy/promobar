class Subheader < ActiveRecord::Base
  belongs_to :promobar

  def animation animation_number
    "animated infinite #{{ 'bounceInLeft' => 1, 'fadeIn' =>  2, 'bounce' => 3 }.key(animation_number.to_i)}"
  end
end
