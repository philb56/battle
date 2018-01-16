feature 'Testing Home Page' do
  scenario '#homepage' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
