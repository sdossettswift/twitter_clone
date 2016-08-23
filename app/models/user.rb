class User < ActiveRecord::Base

  validates :username, presence: true
  has_secure_password
  has_many :posts
  acts_as_follower
  acts_as_followable

end
