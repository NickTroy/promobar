class RemoveColumnButtonFontFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_font, :string
  end
end
