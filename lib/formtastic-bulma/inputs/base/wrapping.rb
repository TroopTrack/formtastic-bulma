module FormtasticBulma
  module Inputs
    module Base
      module Wrapping

        include Formtastic::Inputs::Base::Wrapping

        # <div class="field is-grouped">
        #   <label class="label">Name</label>
        #   <div class="control">
        #     <input class="input" type="text" placeholder="Text input">
        #   </div>
        # </div>
        
        def bootstrap_wrapping(&block)
          form_group_wrapping do
            label_html <<
            template.content_tag(:div, :class => 'control') do
              input_content(&block) <<
              hint_html(:block) <<
              error_html(:block)
            end
          end
        end

        def select_wrapping(&block)
          form_group_wrapping do
            label_html <<
            template.content_tag(:div, :class => 'select') do
              input_content(&block) <<
              hint_html(:block) <<
              error_html(:block)
            end
          end
        end

        def input_content(&block)
          content = [
            add_on_content(options[:prepend]),
            options[:prepend_content],
            yield,
            add_on_content(options[:append]),
            options[:append_content]
          ].compact.join("\n").html_safe

          if prepended_or_appended?(options)
            template.content_tag(:div, content, :class => add_on_wrapper_classes(options).join(" "))
          else
            content
          end
        end

        def prepended_or_appended?(options)
          options[:prepend] || options[:prepend_content] || options[:append] || options[:append_content]
        end

        def add_on_content(content)
          return nil unless content
          template.content_tag(:div, content, :class => 'input-group-addon')
        end

        def form_group_wrapping(&block)
          template.content_tag(:div,
            template.capture(&block).html_safe,
            wrapper_html_options
          )
        end

        def wrapper_html_options
          super.tap do |options|
            options[:class] = options[:class].gsub('input', '')
            options[:class] << " field is-wrapped"
            options[:class] << " has-error" if errors?
          end
        end

        def add_on_wrapper_classes(options)
          [:prepend, :append, :prepend_content, :append_content].find do |key|
            options.has_key?(key)
          end ? ['input-group'] : []
        end

      end
    end
  end
end
