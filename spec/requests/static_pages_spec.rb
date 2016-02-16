require 'rails_helper'

describe "StaticPage" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end

		it "should have the title 'Home'" do
			visit 'static_pages/home'
			expect(page).to have_title("пробное | Home")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit 'static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit 'static_pages/help'
			expect(page).to have_title("пробное | Help")
		end
	end

	describe "About page" do

		it "sould have the content 'О нас'" do
			visit 'static_pages/about'
			expect(page).to have_content('о нас')
		end

		it "should have the title 'О нас'" do
			visit 'static_pages/about'
			expect(page).to have_title("пробное | о нас")
		end
	end
end