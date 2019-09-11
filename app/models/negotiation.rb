class Negotiation < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :continuations
  has_many :comments
  has_many :cnt_comments
end
