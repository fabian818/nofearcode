class WelcomeController < ApplicationController
	def index
	end

	def mail
		proposal = Proposal.create(name: params[:name], body: params[:message], phone: params[:phone], email: params[:email])
		UserMailer.welcome_email(proposal).deliver_now
		['f.pena.jacobo@gmail.com', 'luiserick6294@gmail.com'].each do |email|
			UserMailer.info_email(proposal, email).deliver_now
		end		
		render json: {status: 200}
	end
end
