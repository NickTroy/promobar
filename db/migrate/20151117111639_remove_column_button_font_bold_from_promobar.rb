class RemoveColumnButtonFontBoldFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_font_bold, :integer
  end
end
