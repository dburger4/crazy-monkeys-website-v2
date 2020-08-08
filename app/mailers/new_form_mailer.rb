class NewFormMailer < ApplicationMailer

  def new_registration_mailer
    byebug
    mail(to: 'burger5@purdue.edu', subject: 'Testing ActionMailer')
  end
end
