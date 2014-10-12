class Notif < ActiveRecord::Base
	has_and_belongs_to_many :users, join_table: "notifs_users"
end