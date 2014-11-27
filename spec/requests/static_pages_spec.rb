require 'spec_helper'

#describe "StaticPages" do
  #describe "GET /static_pages" do
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    #end
  #end
#end

describe "Static pages" do

  let(:base_title){ "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home page" do
    before{ visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector 'title', text: "Ruby on Rails Tutorial Sample App" }
    it { should_not have_selector 'title', text: '| Home' }
    #it { should have_selector('title', text: full_title('')) }

  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About page'" do
      visit about_path
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title',
                        :text => "#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
  
end