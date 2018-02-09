require 'spec_helper'

RSpec.feature "switch_turns", :type => :feature do 
  scenario "displays turn on game initialization" do 
    sign_in_and_play
    expect(page).to have_content("Waitrose's turn")
  end

  scenario "displays current turn after attacking" do 
    sign_in_and_play
    click_button "attack"
    click_button "continue"
    expect(page).to have_content("Tesco's turn")
  end
end