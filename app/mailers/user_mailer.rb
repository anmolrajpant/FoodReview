class UserMailer < ApplicationMailer
	default from: 'anmol.pant.c2@gmail.com'

	def newrecipe_email(user_id)
		@user = User.find user_id
		mail(to: @user, subject: 'Welcome to the jungle.')
	end
end
