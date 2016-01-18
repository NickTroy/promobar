class AddColumnChangeTimeToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :change_time, :integer
  end
end
