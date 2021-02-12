require 'rails_helper'

describe "User can view conversation" do
  it "has a link to add a message to the conversation" do
    conversation = Conversation.create!(title: "Hello World!", start_date: Time.now)

    visit "/conversations/#{conversation.id}"

    expect(page).to have_content('Hello World!')

    click_on('Add a Message')

    expect(current_path).to eq("/conversations/#{conversation.id}/messages/new")
  end
end
