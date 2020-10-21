module ApplicationHelper
  def full_title(page_title = '')  # full_title method
    base_title = 'Airbnb'
    if page_title.blank?
      base_title  # 'Airbnb'
    else
      "#{page_title} - #{base_title}" # ex) BookingPage - Airbnb
    end
  end
end
