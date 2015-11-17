class RemoveColumnLeadingFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :leading, :integer
  end
end
