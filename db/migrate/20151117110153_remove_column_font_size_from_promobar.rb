class RemoveColumnFontSizeFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :font_size, :integer
  end
end
