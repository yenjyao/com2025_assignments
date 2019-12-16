require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

  test "should return contact email" do
    mail = ContactMailer.contact_email("fake@fake.co.uk","Justin", "234234", @message = "fake test")

    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['musique@mynotes.com'], mail.from
  end

end
