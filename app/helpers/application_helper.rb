module ApplicationHelper

	
def link_to_in_li(body, url, html_options = {})
  active = "active" if current_page?(url)
  content_tag :li, class: active do
    link_to body, url, html_options
  end
end

def nested_dropdown(items)
  result = []
  items.map do |item, sub_items|
      result << [('- ' * item.depth) + item.name, item.id]
      result += nested_dropdown(sub_items) unless sub_items.blank?
  end
  
  result
end

  
end
