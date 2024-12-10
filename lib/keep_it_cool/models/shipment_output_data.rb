# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class ShipmentOutputData
    attr_accessor :order_number

    attr_accessor :external_shipment_id

    attr_accessor :tracking_number

    attr_accessor :to_location

    attr_accessor :coolant

    attr_accessor :items

    attr_accessor :expected_ship_date

    attr_accessor :order_created_at

    attr_accessor :shipment_status

    attr_accessor :shipped_at

    attr_accessor :delivered_at

    attr_accessor :current_prediction

    attr_accessor :distribution_center

    attr_accessor :packaging_config

    attr_accessor :shipping_method

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'order_number' => :'order_number',
        :'external_shipment_id' => :'external_shipment_id',
        :'tracking_number' => :'tracking_number',
        :'to_location' => :'to_location',
        :'coolant' => :'coolant',
        :'items' => :'items',
        :'expected_ship_date' => :'expected_ship_date',
        :'order_created_at' => :'order_created_at',
        :'shipment_status' => :'shipment_status',
        :'shipped_at' => :'shipped_at',
        :'delivered_at' => :'delivered_at',
        :'current_prediction' => :'current_prediction',
        :'distribution_center' => :'distribution_center',
        :'packaging_config' => :'packaging_config',
        :'shipping_method' => :'shipping_method'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'order_number' => :'String',
        :'external_shipment_id' => :'String',
        :'tracking_number' => :'String',
        :'to_location' => :'ToLocation',
        :'coolant' => :'Coolant',
        :'items' => :'Array<Item>',
        :'expected_ship_date' => :'Date',
        :'order_created_at' => :'Time',
        :'shipment_status' => :'ShipmentStatusEnum',
        :'shipped_at' => :'Time',
        :'delivered_at' => :'Time',
        :'current_prediction' => :'ShipmentPrediction',
        :'distribution_center' => :'CustomerDistributionCenter',
        :'packaging_config' => :'CustomerPackagingConfig',
        :'shipping_method' => :'CustomerShippingMethod'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'order_number',
        :'external_shipment_id',
        :'tracking_number',
        :'expected_ship_date',
        :'order_created_at',
        :'shipped_at',
        :'delivered_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `KeepItCool::ShipmentOutputData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KeepItCool::ShipmentOutputData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'order_number')
        self.order_number = attributes[:'order_number']
      end

      if attributes.key?(:'external_shipment_id')
        self.external_shipment_id = attributes[:'external_shipment_id']
      end

      if attributes.key?(:'tracking_number')
        self.tracking_number = attributes[:'tracking_number']
      end

      if attributes.key?(:'to_location')
        self.to_location = attributes[:'to_location']
      end

      if attributes.key?(:'coolant')
        self.coolant = attributes[:'coolant']
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'expected_ship_date')
        self.expected_ship_date = attributes[:'expected_ship_date']
      end

      if attributes.key?(:'order_created_at')
        self.order_created_at = attributes[:'order_created_at']
      end

      if attributes.key?(:'shipment_status')
        self.shipment_status = attributes[:'shipment_status']
      else
        self.shipment_status = nil
      end

      if attributes.key?(:'shipped_at')
        self.shipped_at = attributes[:'shipped_at']
      end

      if attributes.key?(:'delivered_at')
        self.delivered_at = attributes[:'delivered_at']
      end

      if attributes.key?(:'current_prediction')
        self.current_prediction = attributes[:'current_prediction']
      end

      if attributes.key?(:'distribution_center')
        self.distribution_center = attributes[:'distribution_center']
      end

      if attributes.key?(:'packaging_config')
        self.packaging_config = attributes[:'packaging_config']
      end

      if attributes.key?(:'shipping_method')
        self.shipping_method = attributes[:'shipping_method']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@order_number.nil? && @order_number.to_s.length > 100
        invalid_properties.push('invalid value for "order_number", the character length must be smaller than or equal to 100.')
      end

      if !@external_shipment_id.nil? && @external_shipment_id.to_s.length > 100
        invalid_properties.push('invalid value for "external_shipment_id", the character length must be smaller than or equal to 100.')
      end

      if !@tracking_number.nil? && @tracking_number.to_s.length > 100
        invalid_properties.push('invalid value for "tracking_number", the character length must be smaller than or equal to 100.')
      end

      if @shipment_status.nil?
        invalid_properties.push('invalid value for "shipment_status", shipment_status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@order_number.nil? && @order_number.to_s.length > 100
      return false if !@external_shipment_id.nil? && @external_shipment_id.to_s.length > 100
      return false if !@tracking_number.nil? && @tracking_number.to_s.length > 100
      return false if @shipment_status.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] order_number Value to be assigned
    def order_number=(order_number)
      if !order_number.nil? && order_number.to_s.length > 100
        fail ArgumentError, 'invalid value for "order_number", the character length must be smaller than or equal to 100.'
      end

      @order_number = order_number
    end

    # Custom attribute writer method with validation
    # @param [Object] external_shipment_id Value to be assigned
    def external_shipment_id=(external_shipment_id)
      if !external_shipment_id.nil? && external_shipment_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "external_shipment_id", the character length must be smaller than or equal to 100.'
      end

      @external_shipment_id = external_shipment_id
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_number Value to be assigned
    def tracking_number=(tracking_number)
      if !tracking_number.nil? && tracking_number.to_s.length > 100
        fail ArgumentError, 'invalid value for "tracking_number", the character length must be smaller than or equal to 100.'
      end

      @tracking_number = tracking_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          order_number == o.order_number &&
          external_shipment_id == o.external_shipment_id &&
          tracking_number == o.tracking_number &&
          to_location == o.to_location &&
          coolant == o.coolant &&
          items == o.items &&
          expected_ship_date == o.expected_ship_date &&
          order_created_at == o.order_created_at &&
          shipment_status == o.shipment_status &&
          shipped_at == o.shipped_at &&
          delivered_at == o.delivered_at &&
          current_prediction == o.current_prediction &&
          distribution_center == o.distribution_center &&
          packaging_config == o.packaging_config &&
          shipping_method == o.shipping_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [order_number, external_shipment_id, tracking_number, to_location, coolant, items, expected_ship_date, order_created_at, shipment_status, shipped_at, delivered_at, current_prediction, distribution_center, packaging_config, shipping_method].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = KeepItCool.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
