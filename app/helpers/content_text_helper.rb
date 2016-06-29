module ContentTextHelper
  def text_body(name = nil)
    text = ContentText.find_by(name: name)
    if text.nil?
      "Could not find text '#{name}'"
    else
      markdown(text.body).html_safe
    end
  end
end
