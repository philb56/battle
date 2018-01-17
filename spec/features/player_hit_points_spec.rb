feature '#Play page' do
  scenario 'should see player 2 hit points' do
    # visit '/'
    # fill_in 'player_1_name', with: 'Benjamin'
    # fill_in 'player_2_name', with: 'Alexandra'
    # click_button 'Submit'
    sign_in_and_play
    expect(page).to have_text('Alexandra: 30 Hit Points')
  end
end
