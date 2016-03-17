require 'spec_helper'
require 'capybara'

feature '#Start fight' do
  scenario '1.0 Fill in names' do
      sign_in_and_play
      expect(page).to have_text("Terry VS Ruff - GAME ON!!!")
  end
end
