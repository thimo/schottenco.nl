module SimpleFormsHelper

  def horizontal_test_form resource, options = {}, &block
    options.deep_merge!({html: {class: "form-horizontal test_form"}})
    options[:wrapper] = :horizontal_4_8_form
    options[:wrapper_mappings] = {
      check_boxes: :horizontal_4_8_radio_and_checkboxes,
      radio_buttons: :horizontal_4_8_radio_and_checkboxes,
      file: :horizontal_4_8_file_input,
      boolean: :horizontal_4_8_boolean
    }
    simple_form_for(resource, options, &block)
  end

  def horizontal_form resource, options = {}, &block
    options.deep_merge!({html: {class: "form-horizontal"}})
    options[:wrapper] = :horizontal_form
    options[:wrapper_mappings] = {
      check_boxes: :horizontal_radio_and_checkboxes,
      radio_buttons: :horizontal_radio_and_checkboxes,
      file: :horizontal_file_input,
      boolean: :horizontal_boolean
    }
    simple_form_for(resource, options, &block)
  end

  def vertical_form resource, options = {}, &block
    options.deep_merge!({html: {class: "form-vertical"}})
    options[:wrapper] = :vertical_form
    options[:wrapper_mappings] = {
      check_boxes: :vertical_radio_and_checkboxes,
      radio_buttons: :vertical_radio_and_checkboxes,
      file: :vertical_file_input,
      boolean: :vertical_boolean
    }
    simple_form_for(resource, options, &block)
  end

end
