require 'rails_helper'

describe "StaticPage" do
  describe "Home page" do

    it "Should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end
  end
end
