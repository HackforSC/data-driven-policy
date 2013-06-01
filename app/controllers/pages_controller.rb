class PagesController < ApplicationController
  def home
    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title({ :text=>"Demo Chart"})
      f.chart({ :type => 'spline'})
      f.options[:xAxis] = { :type => 'datetime',
                            :dateTimeLabelFormats => { :month => '%e. %b', :year => '%b' },
                            :title => { :text => nil } }
      f.series(:type => 'area', :name=> 'Test', 
               :data => [[DateTime.new(1970,  9, 27).utc, 0   ],
                        [DateTime.new(1970, 10, 10).utc, 0.6 ],
                        [DateTime.new(1970, 10, 11).utc, 0.7 ],
                        [DateTime.new(1970, 10, 12).utc, 0.8 ],
                        [DateTime.new(1970, 11,  9).utc, 0.6 ],
                        [DateTime.new(1970, 11, 16).utc, 0.6 ],
                        [DateTime.new(1970, 11, 28).utc, 0.67],
                        [DateTime.new(1971,  1,  1).utc, 0.81],
                        [DateTime.new(1971,  1,  8).utc, 0.78],
                        [DateTime.new(1971,  1, 12).utc, 0.98]] )
    end
    
    @data = [[DateTime.new(1970,  9, 27).utc, 0   ],
                        [DateTime.new(1970, 10, 10).utc, 0.6 ],
                        [DateTime.new(1970, 10, 11).utc, 0.7 ],
                        [DateTime.new(1970, 10, 12).utc, 0.8 ],
                        [DateTime.new(1970, 11,  9).utc, 0.6 ],
                        [DateTime.new(1970, 11, 16).utc, 0.6 ],
                        [DateTime.new(1970, 11, 28).utc, 0.67],
                        [DateTime.new(1971,  1,  1).utc, 0.81],
                        [DateTime.new(1971,  1,  8).utc, 0.78],
                        [DateTime.new(1971,  1, 12).utc, 0.98]]
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end

  def test
    flash[:notice] = "Testing flash"

    @objects = EconomicDataService.new.get_data_array
    @count = VariableSummaryContext.call(@objects, :count)
    @range = VariableSummaryContext.call(@objects, :range)
    @mean = VariableSummaryContext.call(@objects, :mean)
    @std_dev = VariableSummaryContext.call(@objects, :standard_deviation)
    
    @trimmed_count = VariableSummaryContext.call(@objects, :count, {:trimmed => true})
    @trimmed_range = VariableSummaryContext.call(@objects, :range, {:trimmed => true})
    @trimmed_mean = VariableSummaryContext.call(@objects, :mean, {:trimmed => true})
    @trimmed_std_dev = VariableSummaryContext.call(@objects, :standard_deviation, {:trimmed => true})
    @num_outliers = VariableSummaryContext.call(@objects, :num_outliers)
    
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end
  
  private
  def demo_chart
    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title({ :text=>"Combination chart"})
      f.options[:xAxis][:categories] = ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
      f.labels(:items=>[:html=>"Total fruit consumption", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ])
      f.series(:type=> 'column',:name=> 'Jane',:data=> [3, 2, 1, 3, 4])
      f.series(:type=> 'column',:name=> 'John',:data=> [2, 3, 5, 7, 6])
      f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
      f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
      f.series(:type=> 'spline',:name=> 'Average', :data=> [3, 2.67, 3, 6.33, 3.33])
      f.series(:type=> 'pie',:name=> 'Total consumption',
      :data=> [
        {:name=> 'Jane', :y=> 13, :color=> 'red'},
        {:name=> 'John', :y=> 23,:color=> 'green'},
        {:name=> 'Joe', :y=> 19,:color=> 'blue'}
      ],
      :center=> [100, 80], :size=> 100, :showInLegend=> false)
    end
  end
  
  def self.date_data_array(object)
    date_data_array = []
#    user.find_past_two_months_of_weight_data.each do |weight|
#    date_weight_array.push
#      ("[" + (weight.entry_date.to_datetime.to_i * 1000).to_s  + "," + weight.weight_entry.to_s + "],")
#    end
#
#    return date_weight_array
  end
end
