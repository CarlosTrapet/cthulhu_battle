
def sign_in_and_play
  visit "/"
  fill_in "name_1", with: "Waitrose"
  fill_in "name_2", with: "Tesco"
  click_button "Submit your souls to the void"
end
