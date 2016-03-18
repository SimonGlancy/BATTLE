feature 'Attack' do
  scenario 'should confirm attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Fluffy has attacked Muffin with his vocals. And it hurt.'
  end

  scenario 'should reduce player 2s hit points' do
    sign_in_and_play
    first_attack
    expect(page).not_to have_content("Fluffy has 100 hit-points and Muffin has 100 hit-points.")
    expect(page).to have_content("Fluffy has 100 hit-points and Muffin has 90 hit-points.")
  end

  scenario 'should swap attack to player 1' do
    sign_in_and_play
    first_attack
    first_attack
    expect(page).to have_content("Fluffy has 90 hit-points and Muffin has 90 hit-points.")
  end

  scenario 'should inform the game is over when one player reaches 0 HP' do
    sign_in_and_play
    19.times{first_attack}
    expect(page).to have_content("Fluffy sang Muffin off the Stage! (The bitch)")
  end

end
