class AddColumnAlignmentToSubheader < ActiveRecord::Migration
  def change
    add_column :subheaders, :alignment, :integer
  end
end
