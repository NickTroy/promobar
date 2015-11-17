class RemoveColumnFontUnderlinedFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :font_underlined, :integer
  end
end
