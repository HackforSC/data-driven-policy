module Scorable
  def distance_score(c1, c2)
    difference = c2.to_d - c1.to_d
    std_deviations = difference / self.std_dev_trim
    return std_deviations
  end
  
  

  private
end