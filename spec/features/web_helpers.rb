def sign_in_and_play
  visit '/'
  'Test test test'
  fill_in 'player_1_name', with: 'Ben'
  fill_in 'player_2_name', with: 'Alex'
  click_button 'Submit'
end

def attack_and_ok(attack_count)
  attack_count.times do
    click_button 'Attack'
    click_button 'Ok'
  end
end
