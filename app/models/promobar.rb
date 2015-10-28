class Promobar < ActiveRecord::Base
  validates :name,
            presence: true,
            uniqueness: true

  validates :url_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true
end
