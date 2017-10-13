feature "attack Player2 and see confirmation" do
  scenario "click attack button and see confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Edward attacked Oliver!"
    end


  scenario "click attack button and see confirmation" do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).to have_content "Oliver (is now attacking) 50HP vs Edward 60HP"
  end
end
