class DistanceFinderContext
  attr_reader :c1, :c2

  def self.call(c1, c2)
    DistanceFinderContext.new(c1, c2).call
  end

  def initialize(c1, c2)
    @c1, @c2 = c1, c2
    @array.extend Scorable
  end

  def call
    @array.distance_score(@c1, @c2)
  end
end