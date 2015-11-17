class AddColumnButtonTextToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :button_text, :string
  end
end
