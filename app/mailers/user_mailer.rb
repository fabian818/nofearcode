class UserMailer < ApplicationMailer
	default from: "info@nofearcode.com"

	def welcome_email(proposal)
		@proposal = proposal
		mail(to: @proposal.email, subject: 'Sample Email')
	end

	def info_email(proposal)
		@proposal = proposal
		mail(to: 'f.pena.jacobo@gmail.com', subject: 'Información de cliente')
		mail(to: 'luiserick6294@gmail.com', subject: 'Información de cliente')
	end
end
