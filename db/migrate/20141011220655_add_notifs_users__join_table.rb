class AddNotifsUsersJoinTable < ActiveRecord::Migration
	def change
		create_table :notifs_users, id: false do |t|
			t.belongs_to :notif
			t.belongs_to :user
		end
	end
end
