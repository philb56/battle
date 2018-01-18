require 'game'

describe Game do
  let(:player_1)          { double :player_1, new: name , receive_damage: 90}
  let(:player_2)          { double :player_2 }
  let(:name)              { 'Ben' }
  subject(:game)          {described_class.new(player_1,player_2)}

  it "Should attack player " do
    #player_1 = Player.new('Ben')
    #game.attack(player_1)
    expect(game.attack(player_1)).to eq 90
  end

  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
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
end
