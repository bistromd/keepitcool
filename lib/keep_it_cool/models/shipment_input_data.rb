# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class ShipmentInputData
    # The ID of this shipment in your system. This field is used to identify a unique shipment. If the ID already exists in Keep it Cool, the shipment will be updated with the provided data. If the ID does not exist, a new shipment will be created.
    attr_accessor :external_shipment_id

    # The order number associated with the shipment. This value will be displayed with the shipment and can be used to search for a shipment in Keep it Cool's dashboard.
    attr_accessor :order_number

    # The shipping carrier's tracking number for this shipment. It is used to fetch the carrier's tracking data (scans, delivery status, etc).  **Note**: While not required on creation, it is highly recommended to eventually update a shipment with a tracking number. Doing so will allow Keep it Cool to track and display actual shipment performance and improve its predictions and recommendations for future shipments. 
    attr_accessor :tracking_number

    attr_accessor :to_location

    attr_accessor :distribution_center

    attr_accessor :shipping_method

    attr_accessor :packaging_config

    #  The items being shipped in the box (excluding the coolant)  
    attr_accessor :items

    attr_accessor :coolant

    # The date the shipment is expected to ship. If provided, Keep it Cool will use this date to predict the shipment's performance.  Format: `YYYY-MM-DD` (e.g. `2021-05-31`), 
    attr_accessor :expected_ship_date

    # The time the order was placed. If provided, this value will be displayed along with the shipment data. It can also be used in ship date recommendations (when order cutoff times are enabled).  Format: `ISO 8601` (e.g `2021-05-31T12:00:00Z`). If no timezone is provided, UTC will be assumed.
    attr_accessor :order_created_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'external_shipment_id' => :'external_shipment_id',
        :'order_number' => :'order_number',
        :'tracking_number' => :'tracking_number',
        :'to_location' => :'to_location',
        :'distribution_center' => :'distribution_center',
        :'shipping_method' => :'shipping_method',
        :'packaging_config' => :'packaging_config',
        :'items' => :'items',
        :'coolant' => :'coolant',
        :'expected_ship_date' => :'expected_ship_date',
        :'order_created_at' => :'order_created_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'external_shipment_id' => :'String',
        :'order_number' => :'String',
        :'tracking_number' => :'String',
        :'to_location' => :'ToLocation',
        :'distribution_center' => :'DistributionCenterIdentification',
        :'shipping_method' => :'ShippingMethodIdentification',
        :'packaging_config' => :'PackagingIdentification',
        :'items' => :'Array<Item>',
        :'coolant' => :'Coolant',
        :'expected_ship_date' => :'Date',
        :'order_created_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `KeepItCool::ShipmentInputData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KeepItCool::ShipmentInputData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'external_shipment_id')
        self.external_shipment_id = attributes[:'external_shipment_id']
      else
        self.external_shipment_id = nil
      end

      if attributes.key?(:'order_number')
        self.order_number = attributes[:'order_number']
      end

      if attributes.key?(:'tracking_number')
        self.tracking_number = attributes[:'tracking_number']
      end

      if attributes.key?(:'to_location')
        self.to_location = attributes[:'to_location']
      end

      if attributes.key?(:'distribution_center')
        self.distribution_center = attributes[:'distribution_center']
      end

      if attributes.key?(:'shipping_method')
        self.shipping_method = attributes[:'shipping_method']
      end

      if attributes.key?(:'packaging_config')
        self.packaging_config = attributes[:'packaging_config']
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'coolant')
        self.coolant = attributes[:'coolant']
      end

      if attributes.key?(:'expected_ship_date')
        self.expected_ship_date = attributes[:'expected_ship_date']
      end

      if attributes.key?(:'order_created_at')
        self.order_created_at = attributes[:'order_created_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @external_shipment_id.nil?
        invalid_properties.push('invalid value for "external_shipment_id", external_shipment_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @external_shipment_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          external_shipment_id == o.external_shipment_id &&
          order_number == o.order_number &&
          tracking_number == o.tracking_number &&
          to_location == o.to_location &&
          distribution_center == o.distribution_center &&
          shipping_method == o.shipping_method &&
          packaging_config == o.packaging_config &&
          items == o.items &&
          coolant == o.coolant &&
          expected_ship_date == o.expected_ship_date &&
          order_created_at == o.order_created_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [external_shipment_id, order_number, tracking_number, to_location, distribution_center, shipping_method, packaging_config, items, coolant, expected_ship_date, order_created_at].hash
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
