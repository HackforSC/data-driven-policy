module SeedFunctions
  def create_bea_variable_distributions
    # Iterate through all variables and years
    get_variables.each do |variable|
      get_years.each do |year|
        create_bea_variable_distribution(variable, year)
      end
    end
  end
  
  private
  def create_bea_variable_distribution(variable, year)
    return nil unless BeaVariableDistribution.where({:key_code => variable, :year => year}).empty?
    
    objects = EconomicDataService.new.get_data_array(variable, year)
    min = VariableSummaryContext.call(objects, :min)
    min_trim = VariableSummaryContext.call(objects, :min, {:trimmed => true})
    max = VariableSummaryContext.call(objects, :max)
    max_trim = VariableSummaryContext.call(objects, :max, {:trimmed => true})
    num_outliers = VariableSummaryContext.call(objects, :num_outliers)
    mean = VariableSummaryContext.call(objects, :mean)
    mean_trim = VariableSummaryContext.call(objects, :mean, {:trimmed => true})
    std_dev = VariableSummaryContext.call(objects, :standard_deviation)
    std_dev_trim = VariableSummaryContext.call(objects, :standard_deviation, {:trimmed => true})

    params = {
      :key_code => variable,
      :year => year,
      :min => min,
      :min_trim => min_trim,
      :max => max,
      :max_trim => max_trim,
      :num_outliers => num_outliers,
      :mean => mean,
      :mean_trim => mean_trim,
      :std_dev => std_dev,
      :std_dev_trim => std_dev_trim
    }
    
#    puts "Params = #{params}"
    
    record = BeaVariableDistribution.new(params)
    puts "Created record for key_code = #{variable}, year = #{year}" if record.save
  end

  def definition_file
    return YAML.load_file("#{Rails.root}/config/bea_params.yml")
  end

  def get_variables
    return definition_file['variables']
  end

  def get_years
    return definition_file['years']
  end

  def get_msas
    return definition_file['msas']
  end
end