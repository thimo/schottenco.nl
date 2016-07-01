module ContentPageHelper
  def nav_menu_for(url = nil)
    menu_item = ContentPage.find_by(url: url)
    return "<li>#{url} not found</li>" if menu_item.nil?

    menu_childs = ContentPage.where('url ILIKE ?', "#{url}/%").where(menu_type: ContentPage.menu_types[:menu_visible])

    menu_title = menu_item.menu_title.blank? ? menu_item.title : menu_item.menu_title
    menu_html = %{
    <li class="#{ 'dropdown' if menu_childs.count > 0 }">
      <a href="/#{menu_item.url}">
        #{menu_title}
      </a>}
    if menu_childs.count > 0
      menu_html += %{<ul class="dropdown-menu">}
      menu_childs.each do |menu_child|
        menu_title = menu_child.menu_title.blank? ? menu_child.title : menu_child.menu_title
        menu_html += %{<li><a href="/#{menu_child.url}">#{menu_title}</a></li>}
      end
      menu_html += %{</ul>}
    end
    menu_html += %{</li>}

  end
end
