class ApplicationMailer < ActionMailer::Base
  default from: 'from@hello.com'
  layout 'mailer'
end
