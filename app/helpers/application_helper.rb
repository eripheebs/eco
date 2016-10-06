module ApplicationHelper
  def on_homepage?
    current_page?('/')
  end

  def cut_short(string)
    return string.slice(0, 100)
  end

  def not_short(string)
    return string.length > 100
  end
end
