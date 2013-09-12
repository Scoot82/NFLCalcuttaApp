class ChangePercentInMembers < ActiveRecord::Migration
  def change
    change_column :members, :ownership_percent, :float
  end
end
