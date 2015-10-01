module RDObjectMapping
  class RDMappingObject
    attr_accessor :properties

    def initialize(properties)
      @properties = properties
    end

    def to_json(*a)
      {
          properties: @properties
      }.to_json(*a)
    end

    def self.json_create(o)
      new(o[:properties])
    end
  end
end