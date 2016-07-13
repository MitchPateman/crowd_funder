class User < ActiveRecord::Base
  has_many :projects
  has_many :pledges
  has_many :rewards

  has_secure_password
  validates :name, :email, presence: true
end
