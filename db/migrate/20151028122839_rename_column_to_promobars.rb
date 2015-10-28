class RenameColumnToPromobars < ActiveRecord::Migration
  def change
    renme_column :promobars, :button_text_animation, :text_animation
  end
end
