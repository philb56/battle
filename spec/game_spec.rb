require 'game'

describe Game do
  subject(:game)          {described_class.new}
  let(:player_1)          { double :player_1, new: name , receive_damage: 90}
  let(:player_2)          { double :player_2 }
  let(:name)              { 'Ben' }


  it "Should attack player " do
    #player_1 = Player.new('Ben')
    #game.attack(player_1)
    expect(game.attack(player_1)).to eq 90
  end

  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end
end
