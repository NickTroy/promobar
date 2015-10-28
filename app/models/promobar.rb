class Promobar < ActiveRecord::Base
  has_one :button

  validates :name,
            presence: true,
            uniqueness: true
end
