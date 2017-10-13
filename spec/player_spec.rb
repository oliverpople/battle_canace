require 'player.rb'

describe Player do
subject(:player) {described_class.new('Dave')}

  it "return's the player's name" do
    expect(player.name).to eq 'Dave'
  end

  it "sets users default HP value to 60" do
    expect(player.hp_value).to eq Player::DEFAULT_HP_VALUE
  end

  it "allows player to attack another player" do
    expect(player).to respond_to(:attack).with(1).argument 
  end

  it "reduces target's HP value by 10 after attack" do
    expect{player.receive_damage}.to change{player.hp_value}.by(-10)
  end
end
