class CreateSyndicates < ActiveRecord::Migration
  def change
    create_table :syndicates do |t|
      t.string :name

      t.timestamps
    end
  end
end
