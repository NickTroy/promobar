class Promobar < ActiveRecord::Base
  has_one :button, dependent: :destroy

  validates :name,
            presence: true,
            uniqueness: true
end
