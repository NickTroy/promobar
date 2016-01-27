class AddColumnHeightToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :height, :text
  end
end
