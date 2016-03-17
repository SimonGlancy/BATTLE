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

    scenario "2.2 As Player 1 I would like my attack to reduce life %" do
      sign_in_and_play
      attack
      expect(page).to have_text("Ruff LIFE : 90%")
    end

  end

  feature "#attack2" do
    scenario "3.1 As Player 1 I would like confirmation of Player 2 attack" do
      sign_in_and_play
      attack
      click_button('Attack')
      expect(page).to have_text("Ruff attacked Terry")
    end

    scenario "3.2 As Player 1 I would like my life reduced after Player 2's attack" do
      sign_in_and_play
      2.times{attack}
      expect(page).to have_text("Terry LIFE : 90%")
    end
  end

    feature "#Players can die" do
      scenario "4.0 go to the game_over page" do
        sign_in_and_play
        19.times{attack}
        expect(page).to have_text("OMG! Terry killed Ruff, you bastard!!!!")
      end
    end
