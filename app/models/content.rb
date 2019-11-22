class Content < ApplicationRecord
  has_many :negotiations

  validates :name, presence: true
end
