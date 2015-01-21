class Round < ActiveRecord::Base
  belongs_to :event, touch: true
end
