class VariableMeanContext
  attr_reader :array

  def self.call(array)
    VariableMeanContext.new(array).call
  end

  def initialize(array)
    @array = array
    @array.extend Summarizable
  end

  def call
    @array.mean
  end
end