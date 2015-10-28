class AddNameColumnToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :name, :string
  end
end
