class VariableStdDevContext
  attr_reader :array

  def self.call(array)
    VariableStdDevContext.new(array).call
  end

  def initialize(array)
    @array = array
    @array.extend Summarizable
  end

  def call
    @array.standard_deviation
  end
end