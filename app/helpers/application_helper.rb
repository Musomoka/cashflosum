module ApplicationHelper
  attr_accessor :cf_name, :cf_sum
	
  def link_to_in_li(body, url, html_options = {})
    active = "active" if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, html_options
    end
  end
 
  
  def cat_name(category)
		"#{category.name}"
		
  end
  
  def cf_list
    categor = []
    cat_roots = Category.roots
    cat_roots.each do |cat_root|
      categor << Category.children_of(cat_root)
    end
  end

  def string_cf_group(passed_id)
   
    cf_by_category = Cashflow.group(passed_id) 
    cf_name = Category.find(passed_id).name
    cf_sum = Cashflow.where(category_id: passed_id).sum(:amount)
    "#{cf_name} - #{cf_sum}"
  end  
  def count
    Category.all.count
  end 

  def cf_totals
   (3...count).each do |cat_id| 
      string_cf_group(cat_id)  
      
    end
  end
end