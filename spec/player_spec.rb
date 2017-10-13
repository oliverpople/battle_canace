require 'player.rb'

describe Player do
subject(:player) {described_class.new('Dave')}

  it "return's the player's name" do
    expect(player.name).to eq 'Dave'
  end
end
