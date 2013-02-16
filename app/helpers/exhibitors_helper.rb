module ExhibitorsHelper

  def link_to_show_exhibitor(link_text, exhibitor)

    link_to link_text, exhibitor_path(exhibitor)

  end

end
