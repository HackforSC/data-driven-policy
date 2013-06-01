LOWER_PERCENTAGE_BOUND = 1
UPPER_PERCENTAGE_BOUND = 99

module Summarizable
  def count(opts = {})
    get_vector(opts).size
  end
  
  def min(opts = {})
    get_vector(opts).min
  end

  def max(opts = {})
    get_vector(opts).max
  end

  def sum(opts = {})
    get_vector(opts).sum
  end
  
  def range(opts = {})
    get_vector(opts).range
  end

  def mean(opts = {})
    get_vector(opts).mean
  end

  def standard_deviation(opts = {})
    get_vector(opts).sd
  end

  def num_outliers(opts = {})
    range = get_vector(opts)
    array = self.dup
    count = 0
    array.each do |value|
      if ((value >= range.percentil(UPPER_PERCENTAGE_BOUND)) || 
          (value <= range.percentil(LOWER_PERCENTAGE_BOUND)))
        count = count + 1 
      end
    end
    return count
  end

  private
  def get_vector(opts = {})
    return without_outliers.to_vector(:scale) if opts[:trimmed]
    return self.to_vector(:scale)
  end
  
  def without_outliers
    range = get_vector
    array = self.dup
    array.delete_if {|value| value >= range.percentil(UPPER_PERCENTAGE_BOUND) } 
    array.delete_if {|value| value <= range.percentil(LOWER_PERCENTAGE_BOUND) } 
    return array
  end
end