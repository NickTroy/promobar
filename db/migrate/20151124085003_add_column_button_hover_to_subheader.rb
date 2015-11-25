class AddColumnButtonHoverToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :button_hover, :string
  end
end
