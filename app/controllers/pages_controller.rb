class PagesController < ApplicationController
  def home
    @objects = EconomicDataService.new.get_data_array
    @mean = VariableMeanContext.call(@objects)
    @std_dev = VariableStdDevContext.call(@objects)
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end
end
