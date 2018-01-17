feature '#Homepage' do
  # scenario 'Testing Home Page Content' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'should expect players to fill in names' do
    visit '/'
    fill_in 'player_1_name', with: 'Benjamin'
    fill_in 'player_2_name', with: 'Alexandra'
    click_button 'Submit'
    expect(page).to have_text('Benjamin vs. Alexandra')
  end
end
