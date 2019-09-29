class Notification < ApplicationRecord
  default_scope->{order(created_at: :desc)}
  belongs_to :continuation, optional: true
  belongs_to :comment, optional: true
  belongs_to :cnt_comment, optional: true
end
