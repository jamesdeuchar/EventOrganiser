module ExhibitorsHelper

  def link_to_show_exhibitor(link_text, exhibitor)
    link_to link_text, exhibitor_path(exhibitor)
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, '#', {:class => css_class, 
                        :onclick => "var url=location.pathname+'?direction=#{direction}&sort=#{column}&per_page='+document.getElementById('per_page').value; window.location=url"}

  end

  def will_paginate_per_page
    select_tag :per_page, 
               options_for_select([20,50,100,500],
               params[:per_page].to_i), 
               :onchange => "if(this.value){location.href='?per_page='+this.value;}"
  end

  def link_to_xls_export
    link_to 'Export list to XLS', '#',
               :onclick => "var url=location.href; url=url.replace('/exhibitors','/exhibitors.xls'); window.location=url"
  end


end
