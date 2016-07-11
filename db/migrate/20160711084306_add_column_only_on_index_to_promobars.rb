class AddColumnOnlyOnIndexToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :only_on_index, :boolean, :default => false
  end
end
