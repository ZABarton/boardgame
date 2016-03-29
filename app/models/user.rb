class User < ActiveRecord::Base
  has_many :ownerships
  has_many :games, through: :ownerships
  has_many :reviews
end
