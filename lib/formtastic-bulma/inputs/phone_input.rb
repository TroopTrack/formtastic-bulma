module FormtasticBulma
  module Inputs
    class PhoneInput < Formtastic::Inputs::PhoneInput
      include Base
      include Base::Stringish

      def to_html
        bootstrap_wrapping do
          builder.phone_field(method, form_control_input_html_options)
        end
      end

    end
  end
end