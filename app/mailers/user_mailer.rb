class UserMailer < ApplicationMailer
	default from: "info@nofearcode.com"
	include Roadie::Rails::Automatic

	def welcome_email(proposal)
		attachments.inline['nfc.png'] = File.read('app/assets/images/nfc.png')
		@proposal = proposal
		mail(to: @proposal.email, subject: 'Bienvenido a nofear code!')
		render layout: 'mailer'
	end

	def info_email(proposal, email)
		@proposal = proposal
		mail(to: email, subject: 'Información de cliente')
	end
end
