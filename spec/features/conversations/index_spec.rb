require 'rails_helper'

describe "User can view conversations and when click link to create a new conversation" do
  it "redirects to create a new conversation page" do
    Conversation.create!(title: "Hello World!", start_date: Time.now)

    visit '/conversations'
    
    expect(page).to have_content('My Conversations')
    expect(page).to have_content('Hello World!')

    click_on('Create a Conversation')

    expect(current_path).to eq('/conversations/new')
  end
end
