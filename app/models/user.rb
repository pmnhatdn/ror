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

class User < ActiveRecord::Base
  attr_accessible :email, :fullname, :password, :password_confirmmation, :password_token, :username
end