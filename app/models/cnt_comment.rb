class CntComment < ApplicationRecord
  belongs_to :user
  belongs_to :negotiation
  belongs_to :continuation
  has_many :notifications,dependent: :destroy
end
