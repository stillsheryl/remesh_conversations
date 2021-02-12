require 'rails_helper'

describe "User can view conversation" do
  it "and add a message to the conversation" do
    conversation = Conversation.create!(title: "Hello World!", start_date: Time.now)

    visit "/conversations/#{conversation.id}"

    click_on 'Add a Message'

    fill_in :text, with: 'Sending a message!'
    click_on('Create Message')

    expect(current_path).to eq("/conversations/#{conversation.id}")
    expect(page).to have_content('Sending a message!')
  end
end
