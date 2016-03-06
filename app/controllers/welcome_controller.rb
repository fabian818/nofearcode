class WelcomeController < ApplicationController
	def index
	end

	def mail
		render text: params
	end
end
