class AddColumnButtonTextToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :button_text, :string
  end
end
