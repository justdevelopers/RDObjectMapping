module RDObjectMapping
  class RDMappingProperty

    enum type: [ :string, :number ]

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