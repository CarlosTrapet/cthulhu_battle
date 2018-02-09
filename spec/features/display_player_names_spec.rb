require 'spec_helper' #Fails if rspec/helper

RSpec.feature "player names", :type => :feature do
  scenario "Enter player names" do
    sign_in_and_play
    expect(page).to have_content "Waitrose and Tesco"
  end
end
