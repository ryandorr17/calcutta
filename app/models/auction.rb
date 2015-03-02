class Auction < ActiveRecord::Base
  has_one :event

  has_many :auction_participants
  has_many :users, through: :auction_participants
end
