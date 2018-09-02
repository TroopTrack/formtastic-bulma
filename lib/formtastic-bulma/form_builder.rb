module FormtasticBulma

  class FormBuilder < Formtastic::FormBuilder

    configure :default_inline_error_class, 'help-inline'
    configure :default_block_error_class,  'help-block'
    configure :default_inline_hint_class,  'help-inline'
    configure :default_block_hint_class,   'help-block'

    self.input_namespaces = [::Object, ::FormtasticBulma::Inputs, ::Formtastic::Inputs]
    self.action_namespaces = [::Object, ::FormtasticBulma::Actions, ::Formtastic::Actions]

    # TODO: remove both class finders after formtastic 4 (where it will be default)
    self.input_class_finder = ::Formtastic::InputClassFinder
    self.action_class_finder = ::Formtastic::ActionClassFinder

    def self.default_error_class
      # self.default_inline_error_class
      raise
    end

    def self.default_error_class=(error_class)
      # self.default_inline_error_class = error_class
      # self.default_block_error_class = error_class
      raise
    end

    def self.default_hint_class
      # self.default_inline_hint_class
      raise
    end

    def self.default_hint_class=(hint_class)
      # self.default_inline_hint_class = hint_class
      # self.default_block_hint_class = hint_class
      raise
    end

    include FormtasticBulma::Helpers::InputsHelper
    include FormtasticBulma::Helpers::ErrorsHelper
    include FormtasticBulma::Helpers::ActionsHelper

  end

end
