class Customer < ApplicationRecord
  has_many :negotiations
  belongs_to :category
end
