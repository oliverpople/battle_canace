def sign_in_and_play
  visit  '/'
  fill_in :player1, with: "Edward"
  fill_in :player2, with: "Oliver"
  click_button "Start"
end
