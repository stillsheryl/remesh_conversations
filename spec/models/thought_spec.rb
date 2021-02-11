require 'rails_helper'

RSpec.describe Thought, type: :model do
  describe "relationships" do
    it { should belong_to :message }
  end
end
