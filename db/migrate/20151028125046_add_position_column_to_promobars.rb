class AddPositionColumnToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :position, :integer
  end
end
