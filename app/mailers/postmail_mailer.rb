class PostmailMailer < ApplicationMailer
    def welcome email
		@email = email
		mail(to: @email, subject: "okkk...okkkkk")
	end
end
