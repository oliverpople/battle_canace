require 'game.rb'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player1}
  let(:player2) {double :player2}


  it 'allows player to attack another player' do
    expect(game).to respond_to(:attack).with(1).argument
  end

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq(player1)
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq(player2)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#switch_players' do
    it 'switche players' do
      expect(game).to respond_to(:switch_players)
    end
  end

  it 'switches player in control after attack' do
    game.switch_players
    expect(game.player1).to eq player2
  end

end
