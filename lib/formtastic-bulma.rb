require "formtastic"
require "formtastic/version"
require "formtastic-bulma/engine" if defined?(::Rails) # For tests
require "formtastic-bulma/helpers"
require "formtastic-bulma/inputs"
require "formtastic-bulma/actions"
require "formtastic-bulma/form_builder"
require "action_view/helpers/text_field_date_helper"

module FormtasticBulma
  extend ActiveSupport::Autoload

  # autoload :FormBuilder
  # autoload :Helpers
  # autoload :HtmlAttributes
  # autoload :I18n
  # autoload :Inputs,  "formtastic-bulma/inputs"
  # autoload :Actions, "formtastic-bulma/actions"
  # autoload :LocalizedString
  # autoload :Localizer
  # autoload :Util

end
