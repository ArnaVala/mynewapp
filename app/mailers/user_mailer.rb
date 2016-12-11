class UserMailer < ApplicationMailer
	default from: "arnavala@gmail.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email,
			:to => 'arnavala@gmail.com',
			:subject => "A new contact form message from #{name}")
	end
end
