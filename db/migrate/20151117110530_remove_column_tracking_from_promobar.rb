class RemoveColumnTrackingFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :tracking, :integer
  end
end
