feature 'User visits homepage' do
    scenario 'They see the welcome message' do
      visit '/'
      expect(page).to have_content "Welcome to Relp"
    end
end
