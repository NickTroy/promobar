class AddButtonOnToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :button_on, :boolean
  end
end
