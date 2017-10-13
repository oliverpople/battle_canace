feature "attack Player2 and see confirmation" do
  scenario "click attack button and see confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Edward attacked Oliver!"
    end
end
