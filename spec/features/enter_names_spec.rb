feature '#Home' do
  # scenario 'Testing Home Page Content' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'Should expect players to fill in names' do
    # visit '/'
    # fill_in 'player_1_name', with: 'Benjamin'
    # fill_in 'player_2_name', with: 'Alexandra'
    # click_button 'Submit'
    sign_in_and_play
    expect(page).to have_text('Ben vs. Alex')
  end
end
