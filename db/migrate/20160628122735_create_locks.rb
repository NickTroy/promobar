class CreateLocks < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      t.boolean :turned_on, :default => false
      t.string :color, :default => "#000000"
      t.boolean :disable_transition, :default => true

      t.timestamps
    end
  end
end
