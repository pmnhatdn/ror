require 'spec_helper'

describe "Authentication" do
  
  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end
  end
  describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Entries controller" do

        describe "submitting to the create action" do
          before { post entries_path }
          specify { response.should redirect_to(signin_path) }
        end

        describe "submitting to the destroy action" do
          before { delete entries_path(FactoryGirl.create(:entry)) }
          specify { response.should redirect_to(signin_path) }
        end
      end

    end
end