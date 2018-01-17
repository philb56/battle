feature '#Play-Page' do
  scenario 'Should attack player2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ben attacked Alex'
  end
end
