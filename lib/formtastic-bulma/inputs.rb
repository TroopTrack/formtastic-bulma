module FormtasticBulma
  module Inputs
    extend ActiveSupport::Autoload

    autoload :Base,                "formtastic-bulma/inputs/base"
    # autoload :Basic
    autoload :BooleanInput,        "formtastic-bulma/inputs/boolean_input"
    autoload :CheckBoxesInput,     "formtastic-bulma/inputs/check_boxes_input"
    autoload :ColorInput,        "formtastic-bulma/inputs/color_input"
    autoload :CountryInput,        "formtastic-bulma/inputs/country_input"
    autoload :DateInput,           "formtastic-bulma/inputs/date_input"
    autoload :DatePickerInput,     "formtastic-bulma/inputs/date_picker_input"
    autoload :DatetimePickerInput, "formtastic-bulma/inputs/datetime_picker_input"
    autoload :DateSelectInput,     "formtastic-bulma/inputs/date_select_input"
    autoload :DatetimeInput,       "formtastic-bulma/inputs/datetime_input"
    autoload :DatetimeSelectInput, "formtastic-bulma/inputs/datetime_select_input"
    autoload :EmailInput,          "formtastic-bulma/inputs/email_input"
    autoload :FileInput,           "formtastic-bulma/inputs/file_input"
    autoload :HiddenInput,         "formtastic-bulma/inputs/hidden_input"
    autoload :NumberInput,         "formtastic-bulma/inputs/number_input"
    # autoload :NumericInput       # TODO Where does Formtastic actually define this?
    autoload :PasswordInput,       "formtastic-bulma/inputs/password_input"
    autoload :PhoneInput,          "formtastic-bulma/inputs/phone_input"
    autoload :RadioInput,          "formtastic-bulma/inputs/radio_input"
    autoload :RangeInput,          "formtastic-bulma/inputs/range_input"
    autoload :SearchInput,         "formtastic-bulma/inputs/search_input"
    autoload :SelectInput,         "formtastic-bulma/inputs/select_input"
    autoload :StringInput,         "formtastic-bulma/inputs/string_input"
    autoload :TextInput,           "formtastic-bulma/inputs/text_input"
    autoload :TimeInput,           "formtastic-bulma/inputs/time_input"
    # autoload :TimePickerInput    # TODO Come back to this.
    autoload :TimeSelectInput,     "formtastic-bulma/inputs/time_select_input"
    autoload :TimeZoneInput,       "formtastic-bulma/inputs/time_zone_input"
    # autoload :Timeish            # This seems like a mistake.
    autoload :UrlInput,            "formtastic-bulma/inputs/url_input"

  end
end
