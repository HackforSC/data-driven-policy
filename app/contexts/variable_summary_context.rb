class VariableSummaryContext
  attr_reader :array, :method, :opts

  def self.call(array, method, opts = {})
    VariableSummaryContext.new(array, method, opts).call
  end

  def initialize(array, method, opts)
    @array, @method, @opts = array, method, opts
    @array.extend Summarizable
  end

  def call
    @array.send(@method, @opts)
  end
end