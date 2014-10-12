class NotifsController < ApplicationController
	respond_to :html, :json
	skip_before_filter :verify_authenticity_token, :only => [:update, :create]

	def edit
		@notif = Notif.find(params[:id])
		respond_with @notif
	end

	def create
		@user = User.find(params[:user_id])
		if @user.authentication_token == params[:user_token]
			puts 'verify_authenticity_token successful'
			@notif = Notif.new(notif_params)
			@notif.save
			@user.notifs << @notif
			respond_with @notif
		else
			raise ActionController::InvalidAuthenticityToken
		end
	end

	def delete
	end

	def update
		@user = User.find(params[:user_id])
		puts @user.email
		if @user.authentication_token == params[:user_token]
			puts 'verify_authenticity_token successful'
			# puts params
			@notif = Notif.find(params[:id])

			# TODO: if the notif is a default and he updates it, then remove the user from
			# that default notif
			# then create a new non-default notif and add the user to do that

			@notif.update_attributes(notif_params)
			puts @notif.desc
			respond_with(@notif) do |format|
				format.json { render json: @notif }
			end
		else
			raise ActionController::InvalidAuthenticityToken
		end
	end

	private

	def notif_params
		params.require(:notif).permit(:desc, :default)
	end
end
