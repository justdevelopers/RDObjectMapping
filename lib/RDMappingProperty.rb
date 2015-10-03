require 'ruby-enum'

module RDObjectMapping

  class RDMappingPropertyType
    include Ruby::Enum

    define :STRING, :string
    define :NUMBER, :number
  end

  class RDMappingProperty
    attr_accessor :key, :type, :value, :desc

    def initialize(key, type, value, desc)
      @key = key
      @type = type
      @value = value
      @desc = desc
    end

    def to_json(*a)
      {
          key: @key,
          type: @type,
          value: @value,
          desc: @desc
      }.to_json(*a)
    end

    def self.json_create(o)
      new(o[:key], o[:type], o[:value], o[:desc])
    end
  end
end

