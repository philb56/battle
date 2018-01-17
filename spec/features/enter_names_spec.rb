feature '#Homepage' do
  scenario 'Testing Home Page Content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
