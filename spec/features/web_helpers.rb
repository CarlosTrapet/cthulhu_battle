
def sign_in_and_play
  visit "/"
  fill_in "name_1", with: "Waitrose"
  fill_in "name_2", with: "Tesco"
  click_button "Submit your souls to the void"
end

def end_game
  10.times do 
    click_button "attack"
    wait_for_page
    click_button "continue"
    wait_for_page
  end
end

def wait_for_page
  find('HP:')
end
