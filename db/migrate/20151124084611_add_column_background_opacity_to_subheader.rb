class AddColumnBackgroundOpacityToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :background_opacity, :integer
  end
end
