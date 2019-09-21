class CntComment < ApplicationRecord
  belongs_to :user
  belongs_to :negotiation
  belongs_to :continuation
end
