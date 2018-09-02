require "formtastic-bulma/inputs/base/errors"
require "formtastic-bulma/inputs/base/hints"
require "formtastic-bulma/inputs/base/html"
require "formtastic-bulma/inputs/base/labelling"

module FormtasticBulma
  module Inputs
    module Base
      extend ActiveSupport::Autoload

      autoload :DatetimePickerish,  "formtastic-bulma/inputs/base/datetime_pickerish"
      # autoload :Associations
      autoload :Collections,  "formtastic-bulma/inputs/base/collections"
      autoload :Choices,      "formtastic-bulma/inputs/base/choices"
      # autoload :Database
      # autoload :Errors
      # autoload :Fileish
      # autoload :Hints
      # autoload :Html
      # autoload :Labelling
      # autoload :Naming
      autoload :Numeric,      "formtastic-bulma/inputs/base/numeric"
      # autoload :Options
      autoload :Placeholder,  "formtastic-bulma/inputs/base/placeholder"
      autoload :Stringish,    "formtastic-bulma/inputs/base/stringish"
      autoload :Timeish,      "formtastic-bulma/inputs/base/timeish"
      # autoload :Validations
      autoload :Wrapping,     "formtastic-bulma/inputs/base/wrapping"

      include Html
      # include Options
      # include Database
      # include Database
      include Errors
      include Hints
      # include Naming
      # include Validations
      # include Fileish
      # include Associations
      include Labelling
      include Wrapping

    end
  end
end
