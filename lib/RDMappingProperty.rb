module RDObjectMapping

  class RDMappingPropertyType
    include Ruby::Enum

    define :STRING, :string
    define :NUMBER, :number
  end

  class RDMappingProperty
    attr_accessor :key, :type, :value, :description

    def initialize(key, type, value, description)
      @key = key
      @type = type
      @value = value
      @description = description
    end

    def to_json(*a)
      {
          key: @key,
          type: @type,
          value: @value,
          description: @description
      }.to_json(*a)
    end

    def self.json_create(o)
      new(o[:key], o[:type], o[:value], o[:description])
    end
  end
end