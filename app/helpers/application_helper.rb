# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user != nil
  end

#  def sortable(column, title = nil)
#    title ||= column.titleize
#    css_class = column == sort_column ? "current #{sort_direction}" : nil
#    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
#    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
#  end

end
