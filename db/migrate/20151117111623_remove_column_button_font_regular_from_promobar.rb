class RemoveColumnButtonFontRegularFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_font_regular, :integer
  end
end
