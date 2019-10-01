module NotificationsHelper
  def notification_form(notification)
    @continuation = nil
    @comment = nil
    @cnt_comment = nil
    
    case notification.action
      when "continuation" then
        @user = User.find_by(id:notification.visiter_id)
        @negotiation = Negotiation.find_by(id:notification.continuation.negotiation_id)
        your_nego = @negotiation.title
        nego_id = @negotiation.id
        @continuation = Continuation.find_by(id:notification.continuation_id)&.text
        link_to "#{@user.view_last_name_and_first_name}が#{your_nego}の進捗を追加しました",negotiation_path(nego_id)
      when "cnt_comment" then
        @user = User.find_by(id:notification.visiter_id)
        @continuation = Negotiation.find_by(id:notification.cnt_comment.continuation_id)
        your_cnt = @continuation.title
        cnt_id = @continuation.id
        @cnt_comment = CntComment.find_by(id:notification.cnt_comment_id)&.body
        link_to "#{@user.view_last_name_and_first_name}が#{your_cnt}の進捗へコメントしました",negotiation_path(cnt_id)
      when "comment" then
        @user = User.find_by(id:notification.visiter_id)
        @negotiation = Negotiation.find_by(id:notification.comment.negotiation_id)
        your_nego = @negotiation.title
        nego_id = @negotiation.id
        @comment = Comment.find_by(id:notification.comment_id)&.body
        link_to "#{@user.view_last_name_and_first_name}が#{your_nego}にコメントしました",negotiation_path(nego_id)
    end
  end

  def unchecked_notifications
    @notifications = current_user.passive_notifications.where(checked: false)
  end
end