class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :syndicate_id
      t.integer :ownership_percent

      t.timestamps
    end
  end
end
