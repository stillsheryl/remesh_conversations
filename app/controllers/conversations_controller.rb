class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
  end

  def create
    conversation = Conversation.create(title: params[:title], start_date: Time.now)

    redirect_to conversations_path
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def search
    @conversations = Conversation.where("title like ?", "%#{params[:title]}%")
  end
end
