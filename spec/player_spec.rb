require 'player'

describe Player do
  it 'Should return player name' do
    player = described_class.new('Ben')
    expect(player.player_name).to eq 'Ben'
  end
end
