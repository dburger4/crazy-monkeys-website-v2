class NewFormMailer < ApplicationMailer

  def new_registration_mailer
    mail(to: 'burger5@purdue.edu', subject: 'Testing ActionMailer')
  end
end
