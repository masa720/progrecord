class Negotiation < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :continuations
  has_many :comments
end
