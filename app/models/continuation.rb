class Continuation < ApplicationRecord
  belongs_to :negotiation
  belongs_to :user
  has_many :cnt_comments, dependent: :destroy
  has_many :notifications,dependent: :destroy
  
  def create_notification_by(current_user)
    notification=current_user.active_notifications.new(
      continuation_id:self.id,
      visited_id:negotiation.user_id,
      action:"continuation"
    )
    notification.save if negotiation.user_id != current_user.id
  end
end
