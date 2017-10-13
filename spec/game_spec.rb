require 'game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:player_2) {double :player_2}

  it 'allows player to attack another player' do
    expect(game).to respond_to(:attack).with(1).argument
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
