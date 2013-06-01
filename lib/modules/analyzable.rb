module Analyzable
  # Example usage
  
=begin
  a = [ 20, 23, 23, 24, 25, 22, 12, 21, 29 ]
  m = a.mean  
  # => 22.11111111111111
  sd = a.standard_deviation  
  # => 4.331908597692872

  # assuming Ruby 1.9.2
  a.keep_if { |n| (m-n).abs > (2*sd) } 
  # => results in 12 remaining
=end

  def sum
    self.inject(0){|accum, i| accum + i }
  end

  def mean
    self.sum/self.length.to_f
  end

  def sample_variance
    m = self.mean
    sum = self.inject(0){|accum, i| accum +(i-m)**2 }
    (1/self.length.to_f*sum)
  end

  def standard_deviation
    return Math.sqrt(self.sample_variance)
  end
end 