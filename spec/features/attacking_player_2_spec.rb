require 'spec_helper'

RSpec.feature "attack confirmation", :type => :feature do 
  scenario "attacking player 2 gives confirmation" do 
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content ("Tesco's life expectancy was reduced")
  end

  scenario "attacking player 2 reduces hit points" do 
    remaining_hp = Player::DEFAULT_HITPOINTS - Player::DEFAULT_ATTACK
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content "Tesco - HP: #{remaining_hp}"
  end
end
