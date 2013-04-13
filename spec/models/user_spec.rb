# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string(255)
#  password               :string(255)
#  email                  :string(255)
#  fullname               :string(255)
#  password_confirmation :string(255)
#  password_token         :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'spec_helper'

describe User do

  before do
  @user = User.new(username: "pmnhat", email: "pmnhatdn@gmail.com") 
  
 # subject { @user }

#  it { should respond_to(:username) }
  #it { should respond_to(:email) }
  end
  describe "when email is not present" do
    before { @user.email = "sd" }
    it { should_not be_valid }
  end  
end

