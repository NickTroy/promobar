class AddColumnButtonFontUnderlinedToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :button_font_underlined, :integer
  end
end
