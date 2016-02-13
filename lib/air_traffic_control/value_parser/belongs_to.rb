module ATC
  class ValueParser
    class BelongsTo < ValueParser
      include ATC::ValueParser::Relationship

      def parse
        return input_value unless input_value.present?
        form.new(input_value).params
      end
    end
  end
end
