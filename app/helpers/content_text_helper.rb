module ContentTextHelper
  def text_body(name = nil)
    markdown(text_body_as_text(name)).html_safe
  end

  def text_body_as_text(name = nil)
    text = ContentText.find_by(name: name)
    if text.nil?
      "Could not find text '#{name}'"
    else
      text.body
    end
  end
end
