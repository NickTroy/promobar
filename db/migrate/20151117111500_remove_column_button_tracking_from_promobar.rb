class RemoveColumnButtonTrackingFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_tracking, :integer
  end
end
