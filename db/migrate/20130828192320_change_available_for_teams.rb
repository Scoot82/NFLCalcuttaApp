class ChangeAvailableForTeams < ActiveRecord::Migration
  change_table :teams do |t|  
    t.change :available, :string
  end
end
