require 'spec_helper'

describe Entry do

  let(:user) { FactoryGirl.create(:user) }
  before { @entry = user.entries.build(content: "Lorem ipsum") }

  subject { @entry }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Entry.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
end