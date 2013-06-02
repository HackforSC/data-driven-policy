class PagesController < ApplicationController
  def home
    gon.chart_data = dummy_data

    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end

  def test
    @description = EconomicDataService.new.get_msa_descriptions
    @full_objects = EconomicDataService.new.get_data_objects

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
  
  def historic_data
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end
  
  def fetch_historic_data
    time_series = EconomicDataService.new.get_annual_data(params[:key_code], params[:msa])
    gon.chart_data = time_series
    
    render :historic_data
  end
  
  def msa_search
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end
  
  def fetch_msa_search
    distance = EconomicDataService.new
#    time_series = EconomicDataService.new.get_annual_data(params[:key_code], params[:msa])
#    gon.chart_data = time_series
    
    render :msa_search
  end
  private
  def dummy_data
    # This formatting is somehow still wrong...
    return [ [DateTime.new(1970,  9, 27).utc, 0.1 ],
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
  
  
  def self.date_data_array(object)
    date_data_array = []
#    user.find_past_two_months_of_weight_data.each do |weight|
#    date_weight_array.push
#      ("[" + (weight.entry_date.to_datetime.to_i * 1000).to_s  + "," + weight.weight_entry.to_s + "],")
#    end
#
#    return date_weight_array
  end
  
  def get_dummy_years
    years = ["2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008"]
    
    array = []
    years.each do |year|
      array.push([ (DateTime.new(year.to_i, 1, 1).to_i * 1000).to_s, Random.new.rand(10).to_s ])
    end
    
    return array
  end
end
