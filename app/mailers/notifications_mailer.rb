class NotificationsMailer < ActionMailer::Base
  default from: "visitor@ccrissman.com"
  default to: "cdcrissman@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Visitor Message")
  end

end
