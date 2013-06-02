module PagesHelper
  def dummy_data
    return [[DateTime.new(1970,  9, 27).utc, 0   ],
             [DateTime.new(1970, 10, 10).utc, 0.6 ],
             [DateTime.new(1970, 10, 11).utc, 0.7 ],
             [DateTime.new(1970, 10, 12).utc, 0.8 ],
             [DateTime.new(1970, 11,  9).utc, 0.6 ],
             [DateTime.new(1970, 11, 16).utc, 0.6 ],
             [DateTime.new(1970, 11, 28).utc, 0.67],
             [DateTime.new(1971,  1,  1).utc, 0.81],
             [DateTime.new(1971,  1,  8).utc, 0.78],
             [DateTime.new(1971,  1, 12).utc, 0.98]]
  end
end