require 'rails_helper'


# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

RSpec.describe "NrelClientService", vcr: true do
  
  context "User can search by zip code" do
    it "responds with stations" do  
      save_and_open_page
      visit '/'
      
      fill_in "80203"
      
      click_button "locate"
      
      expect(current_path).to eq("/search")
      expect(current_path).to have_content("zip=80203")
    
    end
  end
end
