def sign_in_and_play
  visit('/')
  fill_in 'player1', with: "Terry"
  fill_in 'player2', with: "Ruff"
  click_button 'Play MOTHERS!'
end

def attack
  click_button('Attack')
  click_button('Return to Battle')
end
