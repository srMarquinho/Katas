require "battlefield"

describe Battlefield do

  subject(:battlefield) {described_class.new}

  describe "#initialize" do
    it 'has a board' do
      expect(battlefield.board).not_to be_empty
    end
  end

  describe "#see_board" do
    it "prints the board" do

    end
  end
end
