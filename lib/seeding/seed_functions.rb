module SeedFunctions
  def create_bea_variable_distributions
=begin
    get_variables.each do |variable|
      get_years.each do |year|
        create_bea_variable_distribution(variable, year)
      end
    end
=end

  create_bea_variable_distribution(get_variables.first, get_years.first)
  end
  
  private
  def create_bea_variable_distribution(variable, year)
    objects = EconomicDataService.new.get_data_array(variable, year)
    mean = VariableMeanContext.call(objects)
    std_dev = VariableStdDevContext.call(objects)
    puts "Mean = #{mean}, Standard Dev = #{std_dev}"
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