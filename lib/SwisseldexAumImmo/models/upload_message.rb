=begin
#AUM Immo

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.3.2-alpha

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.33
=end

require 'date'

module SwisseldexAumImmo
  class UploadMessage
    # 1 = MoveIn (Einzug), 2 = MoveOut (Auszug), 3 = Update, 4 = Cancellation (Stornierung), 5 = PreInfoMoveIn (Vorinfo Einzug),  6 = PreInfoMoveOut (Vorinfo Auszug)
    attr_accessor :message_type_code

    # Any additional text informing about content or purpose of the message
    attr_accessor :message_type_info

    # Reason why message has been transmitted. If ommited then default \"Scheduled\" is used.
    attr_accessor :message_trigger_type

    attr_accessor :contractor

    attr_accessor :person

    attr_accessor :contract

    attr_accessor :building

    attr_accessor :dwelling

    attr_accessor :goes_to

    attr_accessor :extension

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
        :'message_type_code' => :'messageTypeCode',
        :'message_type_info' => :'messageTypeInfo',
        :'message_trigger_type' => :'messageTriggerType',
        :'contractor' => :'contractor',
        :'person' => :'person',
        :'contract' => :'contract',
        :'building' => :'building',
        :'dwelling' => :'dwelling',
        :'goes_to' => :'goesTo',
        :'extension' => :'extension'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'message_type_code' => :'Object',
        :'message_type_info' => :'Object',
        :'message_trigger_type' => :'Object',
        :'contractor' => :'Object',
        :'person' => :'Object',
        :'contract' => :'Object',
        :'building' => :'Object',
        :'dwelling' => :'Object',
        :'goes_to' => :'Object',
        :'extension' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'message_trigger_type',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwisseldexAumImmo::UploadMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwisseldexAumImmo::UploadMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'message_type_code')
        self.message_type_code = attributes[:'message_type_code']
      end

      if attributes.key?(:'message_type_info')
        self.message_type_info = attributes[:'message_type_info']
      end

      if attributes.key?(:'message_trigger_type')
        self.message_trigger_type = attributes[:'message_trigger_type']
      end

      if attributes.key?(:'contractor')
        self.contractor = attributes[:'contractor']
      end

      if attributes.key?(:'person')
        self.person = attributes[:'person']
      end

      if attributes.key?(:'contract')
        self.contract = attributes[:'contract']
      end

      if attributes.key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.key?(:'dwelling')
        self.dwelling = attributes[:'dwelling']
      end

      if attributes.key?(:'goes_to')
        self.goes_to = attributes[:'goes_to']
      end

      if attributes.key?(:'extension')
        self.extension = attributes[:'extension']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @message_type_code.nil?
        invalid_properties.push('invalid value for "message_type_code", message_type_code cannot be nil.')
      end

      if @contractor.nil?
        invalid_properties.push('invalid value for "contractor", contractor cannot be nil.')
      end

      if @person.nil?
        invalid_properties.push('invalid value for "person", person cannot be nil.')
      end

      if @contract.nil?
        invalid_properties.push('invalid value for "contract", contract cannot be nil.')
      end

      if @building.nil?
        invalid_properties.push('invalid value for "building", building cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @message_type_code.nil?
      message_trigger_type_validator = EnumAttributeValidator.new('Object', ['DataChanged', 'Scheduled', 'null'])
      return false unless message_trigger_type_validator.valid?(@message_trigger_type)
      return false if @contractor.nil?
      return false if @person.nil?
      return false if @contract.nil?
      return false if @building.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_trigger_type Object to be assigned
    def message_trigger_type=(message_trigger_type)
      validator = EnumAttributeValidator.new('Object', ['DataChanged', 'Scheduled', 'null'])
      unless validator.valid?(message_trigger_type)
        fail ArgumentError, "invalid value for \"message_trigger_type\", must be one of #{validator.allowable_values}."
      end
      @message_trigger_type = message_trigger_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          message_type_code == o.message_type_code &&
          message_type_info == o.message_type_info &&
          message_trigger_type == o.message_trigger_type &&
          contractor == o.contractor &&
          person == o.person &&
          contract == o.contract &&
          building == o.building &&
          dwelling == o.dwelling &&
          goes_to == o.goes_to &&
          extension == o.extension
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message_type_code, message_type_info, message_trigger_type, contractor, person, contract, building, dwelling, goes_to, extension].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        SwisseldexAumImmo.const_get(type).build_from_hash(value)
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
    end  end
end
