def sign_in_and_play
  visit '/'
  'Test test test'
  fill_in 'player_1_name', with: 'Ben'
  fill_in 'player_2_name', with: 'Alex'
  click_button 'Submit'
end

def hit_confirmation
  fill_in 'display_box', with: 'Attacked player'
end
