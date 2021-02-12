require 'rails_helper'

RSpec.describe Conversation, type: :model do
  describe "relationships" do
    it { should have_many :messages }
  end
end
