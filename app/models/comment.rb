class Comment < ApplicationRecord
  belongs_to :negotiation
  belongs_to :user
end
