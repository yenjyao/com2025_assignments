class ApplicationMailer < ActionMailer::Base
  #preview mailer email addresses
  default to: 'info@mynotes.com', from: 'musique@mynotes.com'
  layout 'mailer'
end
