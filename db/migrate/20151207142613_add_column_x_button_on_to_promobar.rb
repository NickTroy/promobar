class AddColumnXButtonOnToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :x_button_on, :integer
  end
end
