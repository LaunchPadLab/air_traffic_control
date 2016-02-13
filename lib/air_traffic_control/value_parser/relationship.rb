module ATC
  class ValueParser
    module Relationship
      attr_reader :form

      def after_init(args = {})
        @form = args[:form]
        raise "An associated form class is required for #{self.class.name} input" unless @form.present?
      end
    end
  end
end
