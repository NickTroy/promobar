class Promobar < ActiveRecord::Base
  has_one :button

  validates :name,
            presence: true,
            uniqueness: true,
            :format => { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
end
