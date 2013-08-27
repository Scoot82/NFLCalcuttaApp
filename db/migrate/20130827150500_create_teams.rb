class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :price
      t.string :syndicate_id
      t.boolean :available

      t.timestamps
    end
  end
end
