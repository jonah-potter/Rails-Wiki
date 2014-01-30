module ApplicationHelper
  def prettytime(date)
    date.strftime("%a %b %e %Y %k:%M %p")
  end
end