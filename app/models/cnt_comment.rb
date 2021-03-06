class CntComment < ApplicationRecord
  belongs_to :user
  belongs_to :negotiation
  belongs_to :continuation
  has_many :notifications, dependent: :destroy

  validates :body, presence: true, length: {in: 1..140}

  def create_notification_by(current_user)
    notification = current_user.active_notifications.new(
      cnt_comment_id: id,
      visited_id: continuation.user_id,
      action: "cnt_comment"
    )
    notification.save if continuation.user_id != current_user.id
  end
end
