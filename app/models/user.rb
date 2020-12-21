class User < ApplicationRecord
  has_many :invitations
  has_many :cars

  validates_uniqueness_of :email
end
