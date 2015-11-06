class AddPromobarShowToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :promobar_show, :boolean
  end
end
