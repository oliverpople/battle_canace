feature "Shows player 2's hit points" do
  scenario "at start of game user can see player 2's hit points are 60" do
    sign_in_and_play
    expect(page).to have_content "Edward (is now attacking) 60HP vs Oliver 60HP"
    end
end

feature "redirects to player info" do
  scenario "redirects to player info after clicking ok on attack page" do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).not_to have_content "Edward (is now attacking) 60HP vs Oliver 60HP"
    expect(page).to have_content "Oliver (is now attacking) 50HP vs Edward 60HP"
    end


end
