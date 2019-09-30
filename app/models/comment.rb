class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :negotiation
  has_many :notifications,dependent: :destroy

  def create_notification_by(current_user)
    notification=current_user.active_notifications.new(
      comment_id:self.id,
      visited_id:negotiation.user_id,
      action:"comment"
    )
    notification.save if negotiation.user_id != current_user.id
  end
end
