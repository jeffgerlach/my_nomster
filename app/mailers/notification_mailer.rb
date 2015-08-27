class NotificationMailer < ActionMailer::Base
  default from: "no_reply@jg_nomsterapp.com"

  def comment_added
  	mail(to: "jeffgerlach06@gmail.com",
  			 subject: "A comment has been added to your place")
  end

end
