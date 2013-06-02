class PagesController < ApplicationController
  def home
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
    gon.title = "MSA = #{msa_name(params[:msa])}, Variable = #{key_code_name(params[:key_code])}"
    gon.data_series_name = msa_name(params[:msa])
    gon.data_series = EconomicDataService.new.get_annual_data(params[:key_code], params[:msa])
        
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
    params_list = ""
    params[:key_codes].each do |code|
      params_list = params_list + key_code_name(code) + ","
    end
    
    @analysis_title = "MSAs similar to #{msa_name(params[:msa])} by #{params_list}"
    
    variable_data = EconomicDataService.new.get_msa_variables(params[:key_codes], params[:msa], params[:year])
    closest_three = EconomicDataService.new.find_nearest(variable_data, params[:year], 3)
    @tabs = []
    index = 1
    variable_data.each do |key, value|
      @tabs << key_code_name(key)
      
      if index == 1
        gon.title_1 = key_code_name(key)
        gon.yaxis_1 = "Variable"
        gon.chart_1_series_1_name = msa_name(params[:msa])
        gon.chart_1_series_1 = EconomicDataService.new.get_annual_data(key, params[:msa])
        gon.chart_1_series_2_name = msa_name(closest_three[0][0])
        gon.chart_1_series_2 = EconomicDataService.new.get_annual_data(key, closest_three[0][0])
        gon.chart_1_series_3_name = msa_name(closest_three[1][0])
        gon.chart_1_series_3 = EconomicDataService.new.get_annual_data(key, closest_three[1][0])
        gon.chart_1_series_4_name = msa_name(closest_three[2][0])
        gon.chart_1_series_4 = EconomicDataService.new.get_annual_data(key, closest_three[2][0])
      elsif index ==2
        gon.title_2 = key_code_name(key)
        gon.yaxis_2 = "Variable"
        gon.chart_2_series_1_name = msa_name(params[:msa])
        gon.chart_2_series_1 = EconomicDataService.new.get_annual_data(key, params[:msa])
        gon.chart_2_series_2_name = msa_name(closest_three[0][0])
        gon.chart_2_series_2 = EconomicDataService.new.get_annual_data(key, closest_three[0][0])
        gon.chart_2_series_3_name = msa_name(closest_three[1][0])
        gon.chart_2_series_3 = EconomicDataService.new.get_annual_data(key, closest_three[1][0])
        gon.chart_2_series_4_name = msa_name(closest_three[2][0])
        gon.chart_2_series_4 = EconomicDataService.new.get_annual_data(key, closest_three[2][0])
      else
        gon.title_3 = key_code_name(key)
        gon.yaxis_3 = "Variable"
        gon.chart_3_series_1_name = msa_name(params[:msa])
        gon.chart_3_series_1 = EconomicDataService.new.get_annual_data(key, params[:msa])
        gon.chart_3_series_2_name = msa_name(closest_three[0][0])
        gon.chart_3_series_2 = EconomicDataService.new.get_annual_data(key, closest_three[0][0])
        gon.chart_3_series_3_name = msa_name(closest_three[1][0])
        gon.chart_3_series_3 = EconomicDataService.new.get_annual_data(key, closest_three[1][0])
        gon.chart_3_series_4_name = msa_name(closest_three[2][0])
        gon.chart_3_series_4 = EconomicDataService.new.get_annual_data(key, closest_three[2][0])
      end
      
      index = index + 1
    end
    
    render :msa_search
  end

  private
  def key_code_name(code)
    key_codes = YAML.load_file("#{Rails.root}/config/bea_params.yml")['variable_translations']
    key_codes.each do |array|
      if array[1] == code
        return array[0]
      end
    end
    return nil
  end
 
  def msa_name(msa)
    msas = YAML.load_file("#{Rails.root}/config/bea_params.yml")['msa_translations']
    msas.each do |array|
      if array[1] == msa
        return array[0]
      end
    end
    return nil
  end
end
