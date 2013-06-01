class PagesController < ApplicationController
  def home
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
end
