class UsersController < ApplicationController
	respond_to :html, :json

	def show
	end

	def edit
	end

	def notifs
		@user = User.find(params[:id])
		@notifs = @user.notifs
		respond_with @notifs
	end

	def reminders
	end

	def add_notif
	end

	def add_reminder
	end
end
