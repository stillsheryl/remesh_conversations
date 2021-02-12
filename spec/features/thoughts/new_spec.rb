require 'rails_helper'

describe "User can view messages in a conversation" do
  it "and add a thought to the message" do
    conversation = Conversation.create!(title: "Hello World!", start_date: Time.now)
    message = conversation.messages.create!(text: "Welcome to the fun zone.", date_time_sent: Time.now)

    visit "/conversations/#{conversation.id}"

    within("#message-#{message.id}") do
      expect(page).to have_content('Welcome to the fun zone.')
      click_link 'Add a Thought'
    end

    expect(current_path).to eq("/conversations/#{conversation.id}/messages/#{message.id}/thoughts/new")
  end
end
