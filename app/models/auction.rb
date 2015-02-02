class Auction < ActiveRecord::Base
  belongs_to :user, touch: true
  has_one :event
end
