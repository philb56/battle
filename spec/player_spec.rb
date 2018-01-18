require 'player'

describe Player do

  let(:player1)           {described_class.new("Ben")}
  let(:player2)           {described_class.new("Alex")}

  it 'Should return player name' do
    expect(player1.player_name).to eq 'Ben'
  end

  it 'Should return player score' do
    expect(player1.score).to eq 100
  end

  # it 'Should reduce player score by 10' do
  #   player1.attack(player2)
  #   expect(player2.score).to eq 90
  # end
end
