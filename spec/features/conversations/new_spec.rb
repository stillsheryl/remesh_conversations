require 'rails_helper'

describe "User can create a new conversation" do
  it "creates a new conversation linked to the user" do
    visit '/conversations/new'

    fill_in :title, with: 'new conversation'

    click_on 'Create Conversation'

    conversation = Conversation.last

    expect(current_path).to eq("/conversations")
    expect(page).to have_content('new conversation')
  end
end
