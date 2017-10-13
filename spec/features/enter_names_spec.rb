feature 'takes users name and return new route displaying them' do
  scenario 'user types in two names to form' do
    sign_in_and_play
    expect(page).to have_content "Edward 60HP vs Oliver 60HP"
  end
end
