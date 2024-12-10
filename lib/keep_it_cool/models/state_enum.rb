# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class StateEnum
    AL = "AL".freeze
    AK = "AK".freeze
    AZ = "AZ".freeze
    AR = "AR".freeze
    CA = "CA".freeze
    CO = "CO".freeze
    CT = "CT".freeze
    DE = "DE".freeze
    FL = "FL".freeze
    GA = "GA".freeze
    HI = "HI".freeze
    ID = "ID".freeze
    IL = "IL".freeze
    IN = "IN".freeze
    IA = "IA".freeze
    KS = "KS".freeze
    KY = "KY".freeze
    LA = "LA".freeze
    ME = "ME".freeze
    MD = "MD".freeze
    MA = "MA".freeze
    MI = "MI".freeze
    MN = "MN".freeze
    MS = "MS".freeze
    MO = "MO".freeze
    MT = "MT".freeze
    NE = "NE".freeze
    NV = "NV".freeze
    NH = "NH".freeze
    NJ = "NJ".freeze
    NM = "NM".freeze
    NY = "NY".freeze
    NC = "NC".freeze
    ND = "ND".freeze
    OH = "OH".freeze
    OK = "OK".freeze
    OR = "OR".freeze
    PA = "PA".freeze
    RI = "RI".freeze
    SC = "SC".freeze
    SD = "SD".freeze
    TN = "TN".freeze
    TX = "TX".freeze
    UT = "UT".freeze
    VT = "VT".freeze
    VA = "VA".freeze
    WA = "WA".freeze
    WV = "WV".freeze
    WI = "WI".freeze
    WY = "WY".freeze
    AS = "AS".freeze
    DC = "DC".freeze
    FM = "FM".freeze
    GU = "GU".freeze
    MH = "MH".freeze
    MP = "MP".freeze
    PW = "PW".freeze
    PR = "PR".freeze
    VI = "VI".freeze

    def self.all_vars
      @all_vars ||= [AL, AK, AZ, AR, CA, CO, CT, DE, FL, GA, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VT, VA, WA, WV, WI, WY, AS, DC, FM, GU, MH, MP, PW, PR, VI].freeze
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
      return value if StateEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #StateEnum"
    end
  end
end
