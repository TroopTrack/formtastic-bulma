module FormtasticBulma
  module Actions
    extend ActiveSupport::Autoload

    autoload :Base,         'formtastic-bulma/actions/base'
    autoload :InputAction,  'formtastic-bulma/actions/input_action'
    autoload :LinkAction,   'formtastic-bulma/actions/link_action'
    autoload :ButtonAction, 'formtastic-bulma/actions/button_action'
  end
end
