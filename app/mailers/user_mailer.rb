class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email,
			:to => 'arnavala@gmail.com',
			:subject => "A new contact form message from #{name}")
	end

	def welcome(user)
		@appname = "Bike Berlin"
		mail( 
			:to => user.email, 
			:subject => "Welcome to #{@appname}!"
		)
	end

	def paid_success(user, product)
		@user = user
		@product = product
		mail(
			:from => 'arnavala@gmail.com',
			:to => @user.email,
			:subject => "Bike Berlin: Your order and payment confirmation."
		)
	end
end
