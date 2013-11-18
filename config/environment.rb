# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mysong::Application.initialize!

config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => 587,
  :authentication => :plain,
  :user_name      => 'app19369326@heroku.com',
  :password       => 'rch25shx',
  :domain         => 'mysong.herokuapp.com',
  :enable_starttls_auto => true
}
