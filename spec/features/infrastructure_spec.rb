feature 'testing homepage content' do
  scenario 'user lands on homepage' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
