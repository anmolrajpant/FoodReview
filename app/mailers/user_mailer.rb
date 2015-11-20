class UserMailer < ApplicationMailer
	default from: 'anmol.pant.c2@gmail.com'

	def newrecipe_email(user_email)
		@user = User.all
		mail(to: @user, subject: 'Welcome to the jungle.')
	end
end
