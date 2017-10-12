feature "Shows player 2's hit points" do
  scenario "at start of game user can see player 2's hit points are 60" do
    visit '/play'
    p expect(page.find('.player2_HP')).to have_content('60/60 HP')
    end
end
