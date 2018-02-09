require 'spec_helper'
require 'player'

RSpec.feature "Displaying hit points", :type => :feature do


  scenario "Displaying player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "HP: #{Player::DEFAULT_HITPOINTS}"
  end
end
