require 'spec_helper'

describe "User pages" do
    let(:base_title){ "Ruby on Rails Tutorial Sample App" }

    it "should have the h1 'Sign up'" do
      visit signup_path
      page.should have_selector('h1', text: 'Sign up')
    end

    it "should have the title 'Sign up'" do
      visit signup_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Sign up")
    end
end