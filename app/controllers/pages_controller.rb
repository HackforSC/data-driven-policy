class PagesController < ApplicationController
  def home
    datasets = []
    datasets.push(dummy_data)
    datasets.push(dummy_data_two)
    gon.chart_series = datasets

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
    gon.title = "MSA = #{params[:msa]}, Variable = #{params[:key_code]}"
    gon.msa_series = EconomicDataService.new.get_annual_data(params[:key_code], params[:msa])
    gon.min_series = EconomicDataService.new.get_min_series(params[:key_code])
    gon.max_series = EconomicDataService.new.get_max_series(params[:key_code])
        
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
    @params = params
    variable_data = EconomicDataService.new.get_msa_variables(params[:key_codes], params[:msa], params[:year])
    closest_three = EconomicDataService.new.find_nearest(variable_data, params[:year], 3)

    @key_code = params[:key_codes].first
    @match_1 = closest_three[0][0]
    @match_2 = closest_three[1][0]
    @match_3 = closest_three[2][0]

    gon.msa_series = EconomicDataService.new.get_annual_data(@key_code, @match_1)
    gon.min_series = EconomicDataService.new.get_annual_data(@key_code, @match_2)
    gon.max_series = EconomicDataService.new.get_annual_data(@key_code, @match_3)
    
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
             [DateTime.new(1971,  2,  2).utc, 0.81],
             [DateTime.new(1971,  2,  8).utc, 0.78],
             [DateTime.new(1971,  2, 12).utc, 0.98]]
  end
  
  def dummy_data_two
    # This formatting is somehow still wrong...
    return [ [DateTime.new(1970,  9, 27).utc, 0.4 ],
             [DateTime.new(1970, 10, 10).utc, 0.3 ],
             [DateTime.new(1970, 10, 11).utc, 0.77 ],
             [DateTime.new(1970, 10, 12).utc, 1.2 ],
             [DateTime.new(1970, 11,  9).utc, 1.6 ],
             [DateTime.new(1970, 11, 16).utc, 0.5 ],
             [DateTime.new(1970, 11, 28).utc, 0.37],
             [DateTime.new(1971,  1,  1).utc, 0.91],
             [DateTime.new(1971,  1,  8).utc, 1.18],
             [DateTime.new(1971,  1, 12).utc, 0.48]]
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
