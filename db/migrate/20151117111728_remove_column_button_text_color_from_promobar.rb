class RemoveColumnButtonTextColorFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_text_color, :string
  end
end
