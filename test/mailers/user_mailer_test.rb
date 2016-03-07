require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
	test "info_email" do
		email = UserMailer.info_email(Proposal.first,
			'f.pena.jacobo@gmail.com').deliver_now

		assert_equal ['me@example.com'], email.from
		assert_equal ['friend@example.com'], email.to
		assert_equal 'You have been invited by me@example.com', email.subject
		assert_equal read_fixture('invite').join, email.body.to_s
	end
end
