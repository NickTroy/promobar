class RenameColumnToPromobars < ActiveRecord::Migration
  def change
    rename_column :promobars, :button_text_animation, :text_animation
  end
end
