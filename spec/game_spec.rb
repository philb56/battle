require 'game'

describe Game do
  let(:player_1)          { double :player_1, new: name , receive_damage: 90}
  let(:player_2)          { double :player_2 }
  let(:name)              { 'Ben' }
  subject(:game)          {described_class.new(player_1,player_2)}

  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#switch_turns' do
    it "Should switch players" do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end

  end


end
