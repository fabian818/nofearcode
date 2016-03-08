class WelcomeController < ApplicationController
	def index
	end

	def mail
		user = User.create_or_find(params)
		puts user.inspect
		proposal = user.proposals.create(body: params[:message], phone: params[:phone])
		puts proposal.inspect
		$customerio.identify(
			:id => user.id,
			:email => user.email,
			:created_at => user.created_at.to_i,
			:first_name => user.name,
			:proposals => user.proposals.count
			)

		$customerio.track(user.id, "welcome", {proposals: user.proposals.count})
		render json: {status: 200}
	end

	def test_email
		# attachments.inline['header-bg.jpg'] = File.read('app/assets/images/header-bg.jpg')
		render layout: "mailer"
	end
end
