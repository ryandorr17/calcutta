class Event < ActiveRecord::Base
  has_many :rounds, dependent: :destroy
  has_many :entrants, dependent: :destroy
  has_many :auctions



end
