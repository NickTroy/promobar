class AddColumnTextAnimationToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :text_animation, :integer
  end
end
