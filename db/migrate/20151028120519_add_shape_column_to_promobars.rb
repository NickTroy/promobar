class AddShapeColumnToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :button_shape, :string
  end
end
