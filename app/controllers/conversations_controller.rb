class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
  end

  def create
    conversation = Conversation.create(title: params["Title"])

    redirect_to "/conversations"
  end

  def show
    @conversation = Conversation.find(params["id"])
  end
end
