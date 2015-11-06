class AddFontUnderlinedToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :font_underlined, :integer
  end
end
