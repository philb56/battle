feature '#Play-Page' do
  scenario 'Should see player1 hit points' do
    sign_in_and_play
    expect(page).to have_text('Ben: 100 HP')
  end
  scenario 'Should see player2 hit points' do
    sign_in_and_play
    expect(page).to have_text('Alex: 100 HP')
  end

  scenario 'Should see player2 hit points reduced by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_text('Ben: 100 HP')
    expect(page).to have_text('Alex: 90 HP')
  end

  scenario 'Should see player1 hit points reduced by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    click_button 'Attack'
    click_button 'Ok'

    expect(page).to have_text('Ben: 90 HP')
    expect(page).to have_text('Alex: 90 HP')
  end
end
