# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string(255)
#  password               :string(255)
#  email                  :string(255)
#  fullname               :string(255)
#  password_confirmmation :string(255)
#  password_token         :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'spec_helper'

describe User do

  before { @user = User.new(name: "pmnhat", email: "pmnhatdn@gmail.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
end