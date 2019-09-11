class CntComment < ApplicationRecord
  belongs_to :user
  belongs_to :continuation
end
