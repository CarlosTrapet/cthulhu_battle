require 'spec_helper'

RSpec.feature "game over", :type => :feature do 
  let(:game) { double :game, game_over?: true }
  scenario "game ends when player HP reaches 0" do 
    sign_in_and_play
    # end_game
    expect(page).to have_content("Game is over")
  end
end