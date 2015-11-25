class AddColumnUrlLinkToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :url_link, :string
  end
end
