class RemoveColumnFontBoldFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :font_bold, :integer
  end
end
