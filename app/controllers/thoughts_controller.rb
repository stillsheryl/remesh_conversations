class ThoughtsController < ApplicationController
  def new
  end

  def create
    message = Message.find(params[:message_id])

    message.thoughts.create(text: params[:text], date_time_sent: Time.now)

    redirect_to conversation_path(params[:conversation_id])
  end
end
