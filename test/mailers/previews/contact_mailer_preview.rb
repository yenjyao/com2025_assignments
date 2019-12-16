# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer

class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    ContactMailer.contact_email("fake@fake.co.uk", "Justin", "234234", @message = "fake test")
  end
end
