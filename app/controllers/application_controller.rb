class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # before_action :notification_count

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
  end

  # def notification_count
  #   if user_signed_in?
  #     @exist = Notification.where(visited_id: current_user.id,checked: '0').count
  #   end
  # end
end
