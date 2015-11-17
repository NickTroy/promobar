class RemoveColumnFontItalicFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :font_italic, :integer
  end
end
