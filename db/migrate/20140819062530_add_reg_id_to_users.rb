class AddRegIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :regid, :string
  end
end
