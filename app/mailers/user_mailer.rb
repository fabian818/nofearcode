class UserMailer < ApplicationMailer
	default from: "info@nofearcode.com"

	def welcome_email(proposal)
		@proposal = proposal
		mail(to: @proposal.email, subject: 'Sample Email')
	end

	def info_email(proposal, email)
		@proposal = proposal
		mail(to: email, subject: 'Información de cliente')
	end
end
