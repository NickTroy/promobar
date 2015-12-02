class ChangeDataTypeForText < ActiveRecord::Migration
  def self.up
    change_table :promobars do |t|
      t.change :text, :text
    end
  end
  def self.down
    change_table :tablename do |t|
      t.change :text, :string
    end
  end
end
