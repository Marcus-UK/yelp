feature 'User creates a new restaurant listing' do
    scenario 'They enter a restaurant name and description' do
      visit new_restaurant_path
      puts page.body
      fill_in "restaurant[name]", with: 'Nando\'s'
      fill_in 'restaurant[description]', with: 'Cheeky Chicken.'
      click_button 'Save Restaurant'
      expect(page).to have_content "Nando\'s"
    end
end
