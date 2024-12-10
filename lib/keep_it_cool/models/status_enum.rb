# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class StatusEnum
    SUCCESS = "success".freeze
    ERROR = "error".freeze

    def self.all_vars
      @all_vars ||= [SUCCESS, ERROR].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if StatusEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #StatusEnum"
    end
  end
end
