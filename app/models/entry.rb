class Entry < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates(:user_id, presence: true)
  validates :content, :length => { :maximum => 200, :minimum=>10}
  belongs_to :user
  default_scope order: 'entries.created_at DESC'
end
