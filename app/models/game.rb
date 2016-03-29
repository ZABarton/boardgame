class Game < ActiveRecord::Base
  has_many :users
  has_many :users, through: :reviews
  has_many :users, through: :ownerships
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :publisher
end
