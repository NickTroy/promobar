class RemoveColumnDisplayBarFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :display_bar, :boolean
  end
end
