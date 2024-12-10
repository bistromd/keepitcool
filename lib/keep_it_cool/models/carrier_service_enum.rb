# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class CarrierServiceEnum
    FEDEX_INTERNATIONAL_PRIORITY_EXPRESS = "fedex_international_priority_express".freeze
    FEDEX_GROUND = "fedex_ground".freeze
    FEDEX_HOME_DELIVERY = "fedex_home_delivery".freeze
    FEDEX_2DAY = "fedex_2day".freeze
    FEDEX_2DAY_AM = "fedex_2day_am".freeze
    FEDEX_EXPRESS_SAVER = "fedex_express_saver".freeze
    FEDEX_STANDARD_OVERNIGHT = "fedex_standard_overnight".freeze
    FEDEX_PRIORITY_OVERNIGHT = "fedex_priority_overnight".freeze
    FEDEX_FIRST_OVERNIGHT = "fedex_first_overnight".freeze
    FEDEX_1_DAY_FREIGHT = "fedex_1_day_freight".freeze
    FEDEX_2_DAY_FREIGHT = "fedex_2_day_freight".freeze
    FEDEX_3_DAY_FREIGHT = "fedex_3_day_freight".freeze
    FEDEX_FIRST_OVERNIGHT_FREIGHT = "fedex_first_overnight_freight".freeze
    FEDEX_GROUND_INTERNATIONAL = "fedex_ground_international".freeze
    FEDEX_INTERNATIONAL_ECONOMY = "fedex_international_economy".freeze
    FEDEX_INTERNATIONAL_PRIORITY = "fedex_international_priority".freeze
    FEDEX_INTERNATIONAL_FIRST = "fedex_international_first".freeze
    FEDEX_INTERNATIONAL_ECONOMY_FREIGHT = "fedex_international_economy_freight".freeze
    FEDEX_INTERNATIONAL_PRIORITY_FREIGHT = "fedex_international_priority_freight".freeze
    FEDEX_INTERNATIONAL_CONNECT_PLUS = "fedex_international_connect_plus".freeze
    UPS_GROUND = "ups_ground".freeze
    UPS_3_DAY_SELECT = "ups_3_day_select".freeze
    UPS_2ND_DAY_AIR = "ups_2nd_day_air".freeze
    UPS_2ND_DAY_AIR_AM = "ups_2nd_day_air_am".freeze
    UPS_NEXT_DAY_AIR_SAVER = "ups_next_day_air_saver".freeze
    UPS_NEXT_DAY_AIR_EARLY_AM = "ups_next_day_air_early_am".freeze
    UPS_NEXT_DAY_AIR = "ups_next_day_air".freeze
    UPS_STANDARD_INTERNATIONAL = "ups_standard_international".freeze
    UPS_SURE_POST = "ups_sure_post".freeze
    GLS_PRIORITY = "gls_priority".freeze
    GLS_EARLY_PRIORITY = "gls_early_priority".freeze
    GLS_GROUND = "gls_ground".freeze
    GLS_SATURDAY = "gls_saturday".freeze
    GLS_EARLY_SATURDAY = "gls_early_saturday".freeze
    UDS_STANDARD = "uds_standard".freeze
    ON_TRAC_GROUND = "on_trac_ground".freeze
    ON_TRAC_SUNRISE = "on_trac_sunrise".freeze
    ON_TRAC_SUNRISE_GOLD = "on_trac_sunrise_gold".freeze
    USPS_PRIORITY_MAIL = "usps_priority_mail".freeze
    USPS_FIRST_CLASS_MAIL = "usps_first_class_mail".freeze
    USPS_MEDIA_MAIL = "usps_media_mail".freeze
    USPS_PARCEL_SELECT = "usps_parcel_select".freeze
    USPS_PRIORITY_MAIL_EXPRESS = "usps_priority_mail_express".freeze
    USPS_FIRST_CLASS_MAIL_INTERNATIONAL = "usps_first_class_mail_international".freeze
    USPS_PRIORITY_MAIL_INTERNATIONAL = "usps_priority_mail_international".freeze
    USPS_PRIORITY_MAIL_EXPRESS_INTERNATIONAL = "usps_priority_mail_express_international".freeze
    BETTER_TRUCKS_NEXT_DAY = "better_trucks_next_day".freeze
    BETTER_TRUCKS_EXPRESS = "better_trucks_express".freeze
    BETTER_TRUCKS_SAME_DAY = "better_trucks_same_day".freeze
    LOCAL_DELIVERY_SERVICE = "local_delivery_service".freeze
    JITSU_SAME_DAY = "jitsu_same_day".freeze
    JITSU_NEXT_DAY = "jitsu_next_day".freeze
    JITSU_TWO_DAY = "jitsu_two_day".freeze

    def self.all_vars
      @all_vars ||= [FEDEX_INTERNATIONAL_PRIORITY_EXPRESS, FEDEX_GROUND, FEDEX_HOME_DELIVERY, FEDEX_2DAY, FEDEX_2DAY_AM, FEDEX_EXPRESS_SAVER, FEDEX_STANDARD_OVERNIGHT, FEDEX_PRIORITY_OVERNIGHT, FEDEX_FIRST_OVERNIGHT, FEDEX_1_DAY_FREIGHT, FEDEX_2_DAY_FREIGHT, FEDEX_3_DAY_FREIGHT, FEDEX_FIRST_OVERNIGHT_FREIGHT, FEDEX_GROUND_INTERNATIONAL, FEDEX_INTERNATIONAL_ECONOMY, FEDEX_INTERNATIONAL_PRIORITY, FEDEX_INTERNATIONAL_FIRST, FEDEX_INTERNATIONAL_ECONOMY_FREIGHT, FEDEX_INTERNATIONAL_PRIORITY_FREIGHT, FEDEX_INTERNATIONAL_CONNECT_PLUS, UPS_GROUND, UPS_3_DAY_SELECT, UPS_2ND_DAY_AIR, UPS_2ND_DAY_AIR_AM, UPS_NEXT_DAY_AIR_SAVER, UPS_NEXT_DAY_AIR_EARLY_AM, UPS_NEXT_DAY_AIR, UPS_STANDARD_INTERNATIONAL, UPS_SURE_POST, GLS_PRIORITY, GLS_EARLY_PRIORITY, GLS_GROUND, GLS_SATURDAY, GLS_EARLY_SATURDAY, UDS_STANDARD, ON_TRAC_GROUND, ON_TRAC_SUNRISE, ON_TRAC_SUNRISE_GOLD, USPS_PRIORITY_MAIL, USPS_FIRST_CLASS_MAIL, USPS_MEDIA_MAIL, USPS_PARCEL_SELECT, USPS_PRIORITY_MAIL_EXPRESS, USPS_FIRST_CLASS_MAIL_INTERNATIONAL, USPS_PRIORITY_MAIL_INTERNATIONAL, USPS_PRIORITY_MAIL_EXPRESS_INTERNATIONAL, BETTER_TRUCKS_NEXT_DAY, BETTER_TRUCKS_EXPRESS, BETTER_TRUCKS_SAME_DAY, LOCAL_DELIVERY_SERVICE, JITSU_SAME_DAY, JITSU_NEXT_DAY, JITSU_TWO_DAY].freeze
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
      return value if CarrierServiceEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CarrierServiceEnum"
    end
  end
end
