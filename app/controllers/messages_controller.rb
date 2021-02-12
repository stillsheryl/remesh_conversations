class MessagesController < ApplicationController
  def new
    @conversation = Conversation.find(params["id"])
  end

  def create
    conversation = Conversation.find(params["id"])

    conversation.messages.create(text: params['Text'], date_time_sent: Time.now)

    redirect_to "/conversations/#{params["id"]}"
  end
end
