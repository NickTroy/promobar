class RemoveColumnButtonFontUnderlinedFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_font_underlined, :integer
  end
end
