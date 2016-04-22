class AddColumnCustomCssToPromobars < ActiveRecord::Migration
  def change
    add_column :promobars, :custom_css, :text
  end
end
