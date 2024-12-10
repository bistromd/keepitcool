# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class CoolantBlockTypeEnum
    DRY_ICE = "DRY_ICE".freeze
    GEL_PACKS = "GEL_PACKS".freeze

    def self.all_vars
      @all_vars ||= [DRY_ICE, GEL_PACKS].freeze
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
      return value if CoolantBlockTypeEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CoolantBlockTypeEnum"
    end
  end
end
