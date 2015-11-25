class AddColumnButtonOnToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :button_on, :boolean
  end
end
