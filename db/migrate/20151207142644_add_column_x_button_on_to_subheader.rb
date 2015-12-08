class AddColumnXButtonOnToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :x_button_on, :integer
  end
end
