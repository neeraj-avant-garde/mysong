# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mysong::Application.initialize!

#ActionMailer::Base.smtp_settings = {
#  :address        => 'smtp.sendgrid.net',
#  :port           => 587,
#  :authentication => :plain,
#  :user_name      => 'app19369326@heroku.com',
#  :password       => 'rch25shx',
#  :domain         => 'herokuapp.com',
#  :enable_starttls_auto => true
#}

#ActionMailer::Base.smtp_settings = {
#  :address        => 'smtp.gmail.com',
#  :port           => 587,
#  :authentication => :login,
#  :user_name      => 'nnneerajjj',
#  :password       => 'meramail',
#  :domain         => 'heroku.com',
#  :enable_starttls_auto => true
#}
