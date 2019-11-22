class Negotiation < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :continuations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :cnt_comments, dependent: :destroy
  belongs_to :content
  belongs_to :department

  validates :title, presence: true, length: {in: 1..50}
  validates :body, presence: true, length: {in: 1..500}
end
