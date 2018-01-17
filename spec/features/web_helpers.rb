def sign_in_and_play
  visit '/'
  fill_in 'player_1_name', with: 'Benjamin'
  fill_in 'player_2_name', with: 'Alexandra'
  click_button 'Submit'
end
