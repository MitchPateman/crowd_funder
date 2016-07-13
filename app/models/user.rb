class User < ApplicationRecord
  has_many :projects
  has_many :pledges
  has_many :rewards
end
