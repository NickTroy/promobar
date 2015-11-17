class RemoveColumnButtonTextFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_text, :string
  end
end
