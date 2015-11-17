class RemoveColumnButtonLeadingFromPromobar < ActiveRecord::Migration
  def change
    remove_column :promobars, :button_leading, :integer
  end
end
