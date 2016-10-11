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
      Kramdown::Document.new(content).to_html.html_safe
    end
  end

  def label_tag_for_show(model, column_name)
    label_tag column_name, label_for_column(model, column_name), class: "col-sm-3 control-label"
  end

  def label_tag_for_index(model, column_name)
    content_tag :th, label_for_column(model, column_name)
  end

  def country_name(country_code)
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end

  private

    def label_for_column(model, column_name)
      return model.human_attribute_name(column_name) if model.class == Class
      model.class.human_attribute_name(column_name) unless model.class == Class
    end

end
