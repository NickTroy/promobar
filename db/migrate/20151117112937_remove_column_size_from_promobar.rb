class RemoveColumnSizeFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :size, :integer
  end
end
