require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Have a nice day !!!'" do
      visit '/static_pages/home'
      page.should have_content('Have a nice day !!!')
    end
  end
end

 describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end