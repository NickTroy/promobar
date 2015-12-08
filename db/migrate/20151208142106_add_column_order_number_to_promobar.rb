class AddColumnOrderNumberToPromobar < ActiveRecord::Migration
  def change
    add_column :promobars, :order_number, :integer
  end
end
