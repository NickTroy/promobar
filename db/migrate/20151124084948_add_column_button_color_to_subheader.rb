class AddColumnButtonColorToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :button_color, :string
  end
end
