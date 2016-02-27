require 'rails_helper'

describe "StaticPage" do

	subject {page}

	describe "Home page" do
		before {visit root_path}

		it {should have_content('Sample App')}
		it {should have_title("пробное")}
		it {should_not have_title('| Home')}
	end

	describe "Help page" do
		before {visit help_path}

    	it {should have_content('Help')}
    	it {should have_title("пробное | Help")}
  	end

	describe "About page" do
		before {visit about_path}

		it {should have_content('About')}
		it {should have_title("пробное | About")}
	end

	describe "Contact page" do
		before {visit contact_path}

		it {should have_content('Contact')}
		it {should have_title("пробное | Contact")}
	end
end