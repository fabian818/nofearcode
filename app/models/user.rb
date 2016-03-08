class User < ActiveRecord::Base
	has_many :proposals

	def self.create_or_find(params)
		if User.find_by_email(params[:email]).nil?
			User.create(name: params[:name], email: params[:email])
		else
			User.find_by_email(params[:email])
		end
	end
end
