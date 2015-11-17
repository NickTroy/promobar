class RemoveColumnFontRegularFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :font_regular, :integer
  end
end
