class AboutController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.valid?
        NotificationsMailer.new_message(@message).deliver
        format.html { redirect_to(root_path, :notice => "I got your message!") }
        format.js
      else
        format.html { redirect_to(root_path, :notice => "Something went wrong. Please try again.") }
        format.js
      end
    end

  end

end
