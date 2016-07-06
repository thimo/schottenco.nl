module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = I18n.t('company.name')
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def markdown(content)
    if content.blank?
      ""
    else
      @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
      @markdown.render(content)
    end
  end

end
