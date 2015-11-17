class RemoveColumnDisplayDelayFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :display_delay, :integer
  end
end
