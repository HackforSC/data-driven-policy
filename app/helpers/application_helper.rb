module ApplicationHelper
  # Metadata Helpers
  #----------------------------------------------------------------------------
  def full_title
    base_title = "Data Driven Policy"
    @page_title.nil? ? base_title : "#{base_title} | #{@page_title}"
  end

  def full_description
    base_description = "A means to analyze MSAs statistically to understand policy changes"
    @page_description.nil? ? base_description : @page_description
  end

  # Body Helpers
  #----------------------------------------------------------------------------
  def body_classes    
    controller_classes = "#{controller_name} #{(action_name =~ /.*index.*/) ? "index" : action_name}"
    device_classes = @mobile_device ? "mobile" : "full"
    return "#{device_classes} #{controller_classes}"
  end
  
  def page_id
    default_page_id = "#{controller_name}-#{(action_name =~ /.*index.*/) ? "index" : action_name}"
    @page_id.nil? ? default_page_id : @page_id 
  end

  # Navigation Helpers
  #----------------------------------------------------------------------------
  def navbar_classes
    style_classes = "navbar-inverse"
    position_classes = "navbar-fixed-top"
    return "#{style_classes} #{position_classes}"
  end
  
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : 'inactive'

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  # Global Helpers
  #----------------------------------------------------------------------------
  def currency_format(amount, country = nil)
    pretty_amount = "%.2f" % amount.round(2)
    return "$#{pretty_amount}"
  end

  def date_format(date)
    pretty_date = date.strftime("%B %d, %Y")
    return pretty_date
  end
end