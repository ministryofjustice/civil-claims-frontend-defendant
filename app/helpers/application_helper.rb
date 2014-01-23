
module ApplicationHelper

  def yes_no field, label, form
    raw [
      form.label(field, label).sub('</label>', ''),
      form.radio_button(field, "true"),
      "Yes",
      form.radio_button(field, "false"),
      "No",
      '</label>'
      ].join("\n")
  end

  def amount_field field, label, form
    raw [
      form.label(field, label),
      form.text_field(field, { class: 'pound' })
    ].join("\n")
  end
end
