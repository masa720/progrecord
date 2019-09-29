class Continuation < ApplicationRecord
  belongs_to :negotiation
  belongs_to :user
  has_many :cnt_comments, dependent: :destroy
  has_many :notifications,dependent: :destroy
end
