class MessagesController < ApplicationController
  def new
    @conversation = Conversation.find(params[:conversation_id])
  end

  def create
    conversation = Conversation.find(params[:conversation_id])

    conversation.messages.create(text: params[:text], date_time_sent: Time.now)

    redirect_to conversation_path(params[:conversation_id])
  end
end
