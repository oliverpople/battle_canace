feature 'takes users name and return new route displaying them' do
  scenario 'user types in two names to form' do
    visit  '/'
    fill_in :player1, with: "Edward"
    fill_in :player2, with: "Oliver"
    click_button "Start"
    expect(page).to have_content "Edward vs Oliver"
  end
end
