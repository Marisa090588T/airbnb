class NotificationsController < ApplicationController
  def index
    @notifications = current_user.notifications
    current_user.update_attribute(:notification, false)
  end
end

