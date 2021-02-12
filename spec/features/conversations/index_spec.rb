require 'rails_helper'

describe "User can view conversations and see button to create a new coonversation" do
  it "redirects to create a new conversation page when user clicks link to create a new conversation" do
    Conversation.create!(title: "Hello World!", start_date: Time.now)

    visit '/conversations'

    expect(page).to have_content('My Conversations')
    expect(page).to have_content('Hello World!')

    click_on('Create a Conversation')

    expect(current_path).to eq('/conversations/new')
  end

  it "each conversation is a link to a show page for that conversation" do
    hw = Conversation.create!(title: "Hello World!", start_date: Time.now)
    Conversation.create!(title: "New Conversation", start_date: Time.now)

    visit '/conversations'

    expect(page).to have_content('My Conversations')
    expect(page).to have_link('Hello World!')

    click_link('Hello World!')

    expect(current_path).to eq("/conversations/#{hw.id}")
  end

  it "user can search for a conversation by its title" do
    Conversation.create!(title: "Hello World!", start_date: Time.now)
    Conversation.create!(title: "Hello", start_date: Time.now)
    Conversation.create!(title: "What's up", start_date: Time.now)

    visit '/conversations'

    fill_in :title, with: 'Hello'

    click_on 'Submit'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Hello World!')
    expect(page).to have_content('Hello')
    expect(page).to_not have_content("What's up")
  end
end
