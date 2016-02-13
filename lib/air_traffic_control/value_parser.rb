require 'air_traffic_control/value_parser/relationship'
require 'air_traffic_control/value_parser/attachment'
require 'air_traffic_control/value_parser/belongs_to'
require 'air_traffic_control/value_parser/boolean'
require 'air_traffic_control/value_parser/date'
require 'air_traffic_control/value_parser/datetime'
require 'air_traffic_control/value_parser/float'
require 'air_traffic_control/value_parser/has_many'
require 'air_traffic_control/value_parser/has_one'
require 'air_traffic_control/value_parser/integer'
require 'air_traffic_control/value_parser/nil_class'
require 'air_traffic_control/value_parser/phone'
require 'air_traffic_control/value_parser/string'
require 'air_traffic_control/value_parser/zip'

module ATC
  class ValueParser

    attr_accessor :input_value

    def initialize(args = {})
      @input_value = args[:input_value]
      after_init(args)
    end

    def parse
      # implemented by child classes
    end

    def after_init(args)
      # optionally implemented by child classes
    end

  end
end
