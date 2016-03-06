class WelcomeController < ApplicationController
	def index
	end

	def mail
		proposal = Proposal.create(name: params[:name], body: params[:message], phone: params[:phone], email: params[:email])
		UserMailer.welcome_email(proposal).deliver_now
		UserMailer.info_email(proposal).deliver_now
		render json: {status: 200}
	end
end
