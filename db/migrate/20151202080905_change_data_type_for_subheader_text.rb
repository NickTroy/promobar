class ChangeDataTypeForSubheaderText < ActiveRecord::Migration
  def self.up
    change_table :subheaders do |t|
      t.change :text, :text
    end
  end
  def self.down
    change_table :subheaders do |t|
      t.change :text, :string
    end
  end
end
