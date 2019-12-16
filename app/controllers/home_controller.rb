class HomeController < ApplicationController
  def home
  end

  def contact
  end

#POST method
  def request_contact
    #Form values match parameter names
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

#If no email address, show alert
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
#Show different alert if there is an email address
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    #redirect back to root path
    redirect_to root_path
  end
end
