module ApplicationHelper
  
  def show_params
    html = "<div style='border:1px green solid; margin:10px;padding:10px;'>"
    html += '<heading>Info Send to Us</heading><br/>'
    params.each do |key, value|
      html += "#{key}: #{value} <br/>" if (key != 'authenticity_token' && key != 'utf8')
  end
  html += '</div>'
  return html.html_safe
 end
 
 def things_to_do( links )
    # key = URL, value = body
    html = "<ul>"
    links.each do |url, body |
      html += "<li>" + link_to( body, url) + "</li>"
    end
    html +="</ul>"
    return html.html_safe

  end
end
