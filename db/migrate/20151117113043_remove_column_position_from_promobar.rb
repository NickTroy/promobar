class RemoveColumnPositionFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :position, :integer
  end
end
