# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mysong::Application.initialize!

#ActionMailer::Base.smtp_settings = {
#  :address        => 'smtp.sendgrid.net',
#  :port           => '587',
#  :authentication => :plain,
#  :user_name      => ENV['SENDGRID_USERNAME'],
#  :password       => ENV['SENDGRID_PASSWORD'],
#  :domain         => 'mysong.herokuapp.com',
#  :enable_starttls_auto => true
#}
