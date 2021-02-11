require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "relationships" do
    it { should belong_to :conversation }
    it { should have_many :thoughts }
  end
end
