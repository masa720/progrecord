class Department < ApplicationRecord
  has_many :negotiations

  validates :name, presence: true
end
