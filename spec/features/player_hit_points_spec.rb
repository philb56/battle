feature '#Play page' do
  scenario 'should see player 2 hit points' do
    visit '/'
    fill_in 'player_1_name', with: 'Dana'
    fill_in 'player_2_name', with: 'Alex'
    click_button 'Submit'
    expect(page).to have_text('Alex: 30 Hit Points')
  end
end
