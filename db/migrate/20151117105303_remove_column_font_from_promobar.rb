class RemoveColumnFontFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :font, :string
  end
end
