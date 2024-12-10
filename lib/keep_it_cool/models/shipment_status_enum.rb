# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class ShipmentStatusEnum
    PENDING = "PENDING".freeze
    IN_TRANSIT = "IN_TRANSIT".freeze
    DELIVERED = "DELIVERED".freeze
    EXCEPTION = "EXCEPTION".freeze
    CANCELLED = "CANCELLED".freeze
    TRACKING_DATA_ERROR = "TRACKING_DATA_ERROR".freeze
    EXPIRED_BEFORE_SHIPPING = "EXPIRED_BEFORE_SHIPPING".freeze
    UNKNOWN = "UNKNOWN".freeze
    NO_TRACKING_NUMBER = "NO_TRACKING_NUMBER".freeze
    NOT_DELIVERED = "NOT_DELIVERED".freeze
    SHIPPING_DATA_NOT_FETCHED = "SHIPPING_DATA_NOT_FETCHED".freeze

    def self.all_vars
      @all_vars ||= [PENDING, IN_TRANSIT, DELIVERED, EXCEPTION, CANCELLED, TRACKING_DATA_ERROR, EXPIRED_BEFORE_SHIPPING, UNKNOWN, NO_TRACKING_NUMBER, NOT_DELIVERED, SHIPPING_DATA_NOT_FETCHED].freeze
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
      return value if ShipmentStatusEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShipmentStatusEnum"
    end
  end
end
