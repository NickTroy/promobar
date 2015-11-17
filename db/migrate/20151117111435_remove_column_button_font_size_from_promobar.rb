class RemoveColumnButtonFontSizeFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_font_size, :integer
  end
end
