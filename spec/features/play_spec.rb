require 'spec_helper'

feature "#hitpoints" do
  scenario "1.0 As Player 1 I can see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_text("Terry LIFE : 100% ")
    expect(page).to have_text("Ruff LIFE : 100% ")
  end
end

feature "#attack" do
  scenario "2.0 As Player 1 I would like confirmation of my attack" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_text("Terry attacked Ruff")
  end

  scenario "3.0 As Player 1 I would like my attack to reduce life %" do
    sign_in_and_play
    click_button('Attack')
    click_button('Return to Battle')
    expect(page).to have_text("Ruff LIFE : 90%")
  end
end
