module FormtasticBulma
  module Inputs
    module Base
      module Timeish
        FRAGMENT_CLASSES = {
          :year   => "column",
          :month  => "column",
          :day    => "column",
          :hour   => "column",
          :minute => "column",
          :second => "column"
        }

        FRAGMENT_PLACEHOLDERS = {
          :year   => nil,
          :month  => nil,
          :day    => nil,
          :hour   => nil,
          :minute => nil,
          :second => nil
        }

        def to_html
          bootstrap_wrapping do
            hidden_fragments <<
            row_wrapping do
              fragments.map do |fragment|
                fragment_html(fragment.to_sym)
              end.join.html_safe
            end
          end
        end

        def row_wrapping(&block)
          template.content_tag(:div,
            template.capture(&block).html_safe,
            :class => 'columns'
          )
        end

        def fragment_html(fragment)
          template.content_tag(:div, :class => fragment_class(fragment)) do
            opts = input_options.merge(:prefix => fragment_prefix, :field_name => fragment_name(fragment), :default => value, :include_blank => include_blank?)
            template.send(:"select_#{fragment}", value, opts, fragment_input_html_options(fragment))
          end
        end

        def fragment_input_html_options(fragment)
          input_html_options.tap do |options|
            options[:id] = fragment_id(fragment)
            options[:class] = ((options[:class] || "").split << "input").join(" ")
            options[:placeholder] = fragment_placeholder(fragment)
          end
        end

        def fragment_class(fragment)
          (options[:fragment_classes] || self.class::FRAGMENT_CLASSES)[fragment.to_sym]
        end

        def fragment_placeholder(fragment)
          (options[:fragment_placeholders] || self.class::FRAGMENT_PLACEHOLDERS)[fragment.to_sym]
        end

      end
    end
  end
end
