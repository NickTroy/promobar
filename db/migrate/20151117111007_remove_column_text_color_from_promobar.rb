class RemoveColumnTextColorFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :text_color, :string
  end
end
