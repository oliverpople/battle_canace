require 'player.rb'

describe Player do
subject(:player) {described_class.new('Dave')}

  it "return's the player's name" do
    expect(player.name).to eq 'Dave'
  end

  it "damages target after player attack" do
    player2= Player.new('Oliver')
    expect(player2).to respond_to(:receive_damage)
  end

  it "sets users default HP value to 60" do
    expect(player.hp_value).to eq Player::DEFAULT_HP_VALUE
  end

  describe '#recieve_damage' do
    it "reduces target's HP value by 10 after attack" do
      expect{player.receive_damage}.to change{player.hp_value}.by(-10)
    end
  end
end
