class NotificationsController < ApplicationController
  def index
    @notifications = current_user.notifications
    # blow code seems not work. 
    # What I want to do is: after user see notification index page, notification attribute is changed to false.
    # As notifications should be disapper once user see it.
    current_user.update_attribute(:notification, false)
  end
end
