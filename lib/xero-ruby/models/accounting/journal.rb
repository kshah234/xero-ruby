=begin
#Xero Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class Journal
    # Xero identifier
    attr_accessor :journal_id
    
    # Date the journal was posted
    attr_accessor :journal_date
    
    # Xero generated journal number
    attr_accessor :journal_number
    
    # Created date UTC format
    attr_accessor :created_date_utc
    
    # reference field for additional indetifying information
    attr_accessor :reference
    
    # The identifier for the source transaction (e.g. InvoiceID)
    attr_accessor :source_id
    
    # The journal source type. The type of transaction that created the journal
    attr_accessor :source_type
    ACCREC ||= "ACCREC".freeze
    ACCPAY ||= "ACCPAY".freeze
    ACCRECCREDIT ||= "ACCRECCREDIT".freeze
    ACCPAYCREDIT ||= "ACCPAYCREDIT".freeze
    ACCRECPAYMENT ||= "ACCRECPAYMENT".freeze
    ACCPAYPAYMENT ||= "ACCPAYPAYMENT".freeze
    ARCREDITPAYMENT ||= "ARCREDITPAYMENT".freeze
    APCREDITPAYMENT ||= "APCREDITPAYMENT".freeze
    CASHREC ||= "CASHREC".freeze
    CASHPAID ||= "CASHPAID".freeze
    TRANSFER ||= "TRANSFER".freeze
    ARPREPAYMENT ||= "ARPREPAYMENT".freeze
    APPREPAYMENT ||= "APPREPAYMENT".freeze
    AROVERPAYMENT ||= "AROVERPAYMENT".freeze
    APOVERPAYMENT ||= "APOVERPAYMENT".freeze
    EXPCLAIM ||= "EXPCLAIM".freeze
    EXPPAYMENT ||= "EXPPAYMENT".freeze
    MANJOURNAL ||= "MANJOURNAL".freeze
    PAYSLIP ||= "PAYSLIP".freeze
    WAGEPAYABLE ||= "WAGEPAYABLE".freeze
    INTEGRATEDPAYROLLPE ||= "INTEGRATEDPAYROLLPE".freeze
    INTEGRATEDPAYROLLPT ||= "INTEGRATEDPAYROLLPT".freeze
    EXTERNALSPENDMONEY ||= "EXTERNALSPENDMONEY".freeze
    INTEGRATEDPAYROLLPTPAYMENT ||= "INTEGRATEDPAYROLLPTPAYMENT".freeze
    INTEGRATEDPAYROLLCN ||= "INTEGRATEDPAYROLLCN".freeze
    
    # See JournalLines
    attr_accessor :journal_lines
    
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
        :'journal_id' => :'JournalID',
        :'journal_date' => :'JournalDate',
        :'journal_number' => :'JournalNumber',
        :'created_date_utc' => :'CreatedDateUTC',
        :'reference' => :'Reference',
        :'source_id' => :'SourceID',
        :'source_type' => :'SourceType',
        :'journal_lines' => :'JournalLines'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'journal_id' => :'String',
        :'journal_date' => :'Date',
        :'journal_number' => :'Integer',
        :'created_date_utc' => :'DateTime',
        :'reference' => :'String',
        :'source_id' => :'String',
        :'source_type' => :'String',
        :'journal_lines' => :'Array<JournalLine>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Journal` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Journal`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'journal_id')
        self.journal_id = attributes[:'journal_id']
      end

      if attributes.key?(:'journal_date')
        self.journal_date = attributes[:'journal_date']
      end

      if attributes.key?(:'journal_number')
        self.journal_number = attributes[:'journal_number']
      end

      if attributes.key?(:'created_date_utc')
        self.created_date_utc = attributes[:'created_date_utc']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.key?(:'journal_lines')
        if (value = attributes[:'journal_lines']).is_a?(Array)
          self.journal_lines = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      source_type_validator = EnumAttributeValidator.new('String', ["ACCREC", "ACCPAY", "ACCRECCREDIT", "ACCPAYCREDIT", "ACCRECPAYMENT", "ACCPAYPAYMENT", "ARCREDITPAYMENT", "APCREDITPAYMENT", "CASHREC", "CASHPAID", "TRANSFER", "ARPREPAYMENT", "APPREPAYMENT", "AROVERPAYMENT", "APOVERPAYMENT", "EXPCLAIM", "EXPPAYMENT", "MANJOURNAL", "PAYSLIP", "WAGEPAYABLE", "INTEGRATEDPAYROLLPE", "INTEGRATEDPAYROLLPT", "EXTERNALSPENDMONEY", "INTEGRATEDPAYROLLPTPAYMENT", "INTEGRATEDPAYROLLCN"])
      return false unless source_type_validator.valid?(@source_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      validator = EnumAttributeValidator.new('String', ["ACCREC", "ACCPAY", "ACCRECCREDIT", "ACCPAYCREDIT", "ACCRECPAYMENT", "ACCPAYPAYMENT", "ARCREDITPAYMENT", "APCREDITPAYMENT", "CASHREC", "CASHPAID", "TRANSFER", "ARPREPAYMENT", "APPREPAYMENT", "AROVERPAYMENT", "APOVERPAYMENT", "EXPCLAIM", "EXPPAYMENT", "MANJOURNAL", "PAYSLIP", "WAGEPAYABLE", "INTEGRATEDPAYROLLPE", "INTEGRATEDPAYROLLPT", "EXTERNALSPENDMONEY", "INTEGRATEDPAYROLLPTPAYMENT", "INTEGRATEDPAYROLLCN"])
      unless validator.valid?(source_type)
        fail ArgumentError, "invalid value for \"source_type\", must be one of #{validator.allowable_values}."
      end
      @source_type = source_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          journal_id == o.journal_id &&
          journal_date == o.journal_date &&
          journal_number == o.journal_number &&
          created_date_utc == o.created_date_utc &&
          reference == o.reference &&
          source_id == o.source_id &&
          source_type == o.source_type &&
          journal_lines == o.journal_lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [journal_id, journal_date, journal_number, created_date_utc, reference, source_id, source_type, journal_lines].hash
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
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
