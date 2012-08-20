module ApplicationHelper
	def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
  def languages_select_tag(name = 'set_locale')
    languages = [["English","en"],["Espa&ntilde;ol".html_safe, "es"]]
    options = options_for_select(languages, I18n.locale.to_s)
    select_tag(name, option, :onchange => 'this.form.submit()')
  end
end
