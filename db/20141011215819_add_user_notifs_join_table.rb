class AddUserNotifsJoinTable < ActiveRecord::Migration
	create_table :users_notifs, id: false do |t|
		t.belongs_to :users
		t.belongs_to :notifs
	end
end
