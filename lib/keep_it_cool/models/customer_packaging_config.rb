# frozen_string_literal: true

require 'date'
require 'time'

module KeepItCool
  class CustomerPackagingConfig
    # Unique identifier for the packaging config
    attr_accessor :id

    # Timestamp when the packaging config was created
    attr_accessor :created_at

    # Name of the packaging config
    attr_accessor :name

    # Outer width of the box in inches
    attr_accessor :box_width_in

    # Outer height of the box in inches
    attr_accessor :box_height_in

    # Outer length of the box in inches
    attr_accessor :box_length_in

    # Type of insulation used in the box
    attr_accessor :insulation_type

    # Thickness of insulation in inches
    attr_accessor :insulation_thickness_in

    # The stated r-value of the insulation
    attr_accessor :insulation_r_value

    attr_accessor :priority

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'name' => :'name',
        :'box_width_in' => :'box_width_in',
        :'box_height_in' => :'box_height_in',
        :'box_length_in' => :'box_length_in',
        :'insulation_type' => :'insulation_type',
        :'insulation_thickness_in' => :'insulation_thickness_in',
        :'insulation_r_value' => :'insulation_r_value',
        :'priority' => :'priority'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'Time',
        :'name' => :'String',
        :'box_width_in' => :'Float',
        :'box_height_in' => :'Float',
        :'box_length_in' => :'Float',
        :'insulation_type' => :'String',
        :'insulation_thickness_in' => :'Float',
        :'insulation_r_value' => :'Float',
        :'priority' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KeepItCool::CustomerPackagingConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KeepItCool::CustomerPackagingConfig`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'box_width_in')
        self.box_width_in = attributes[:'box_width_in']
      else
        self.box_width_in = nil
      end

      if attributes.key?(:'box_height_in')
        self.box_height_in = attributes[:'box_height_in']
      else
        self.box_height_in = nil
      end

      if attributes.key?(:'box_length_in')
        self.box_length_in = attributes[:'box_length_in']
      else
        self.box_length_in = nil
      end

      if attributes.key?(:'insulation_type')
        self.insulation_type = attributes[:'insulation_type']
      end

      if attributes.key?(:'insulation_thickness_in')
        self.insulation_thickness_in = attributes[:'insulation_thickness_in']
      end

      if attributes.key?(:'insulation_r_value')
        self.insulation_r_value = attributes[:'insulation_r_value']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      else
        self.priority = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @box_width_in.nil?
        invalid_properties.push('invalid value for "box_width_in", box_width_in cannot be nil.')
      end

      if @box_height_in.nil?
        invalid_properties.push('invalid value for "box_height_in", box_height_in cannot be nil.')
      end

      if @box_length_in.nil?
        invalid_properties.push('invalid value for "box_length_in", box_length_in cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      if @priority > 2147483647
        invalid_properties.push('invalid value for "priority", must be smaller than or equal to 2147483647.')
      end

      if @priority < -2147483648
        invalid_properties.push('invalid value for "priority", must be greater than or equal to -2147483648.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @name.nil?
      return false if @box_width_in.nil?
      return false if @box_height_in.nil?
      return false if @box_length_in.nil?
      return false if @priority.nil?
      return false if @priority > 2147483647
      return false if @priority < -2147483648
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] priority Value to be assigned
    def priority=(priority)
      if priority.nil?
        fail ArgumentError, 'priority cannot be nil'
      end

      if priority > 2147483647
        fail ArgumentError, 'invalid value for "priority", must be smaller than or equal to 2147483647.'
      end

      if priority < -2147483648
        fail ArgumentError, 'invalid value for "priority", must be greater than or equal to -2147483648.'
      end

      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          name == o.name &&
          box_width_in == o.box_width_in &&
          box_height_in == o.box_height_in &&
          box_length_in == o.box_length_in &&
          insulation_type == o.insulation_type &&
          insulation_thickness_in == o.insulation_thickness_in &&
          insulation_r_value == o.insulation_r_value &&
          priority == o.priority
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, name, box_width_in, box_height_in, box_length_in, insulation_type, insulation_thickness_in, insulation_r_value, priority].hash
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
