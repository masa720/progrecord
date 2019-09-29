class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :negotiation
  has_many :notifications,dependent: :destroy

  def create_notification_by(current_user)
    notification = current_user.active_notifications.new(
      comment_id:self.id,
      visited_id:self.user.id,
      action:"comment"
    )
    notification.save if notification.valid?
  end
end
