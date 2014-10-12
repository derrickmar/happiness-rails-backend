class DropUsersNotifsJoinTable < ActiveRecord::Migration
  def change
  	drop_table :users_notifs
  end
end
