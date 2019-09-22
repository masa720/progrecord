class Negotiation < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :continuations
  has_many :comments
  has_many :cnt_comments
  belongs_to :content
  belongs_to :department
end
