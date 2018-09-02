module FormtasticBulma
  module Inputs
    module Base
      module Labelling

        include Formtastic::Inputs::Base::Labelling

        # def control_label_html
        def label_html
          if render_label?
            template.content_tag(:span, :class => 'label') do
              builder.label(input_name, label_text, label_html_options)
            end
          else
            "".html_safe
          end
        end

      end
    end
  end
end
