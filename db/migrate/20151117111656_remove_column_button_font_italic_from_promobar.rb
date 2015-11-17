class RemoveColumnButtonFontItalicFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_font_italic, :integer
  end
end
