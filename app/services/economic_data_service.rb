class EconomicDataService
  def initialize(key = nil, fips = nil)
    @key ||= "0C2DB8A8-4910-4624-B298-41F283F9A74C"
    @fips ||= "MSA"
    @format ||= "XML"
    @base_uri = "http://www.bea.gov/api/data/"
    @test = "http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=STATE&Year=2009&ResultFormat=XML&"
  end

  def get_msa_descriptions(variable = "PCPI_CI", year = "2009")
    objects = []
    data_objects = get_xml_doc(variable, year).xpath("//Data")
    data_objects.each do |data|
      geofips = data.attr("GeoFips")
      geoname = data.attr("GeoName")
      objects << [geoname, geofips]
    end
    return objects
  end

  def get_data_array(variable = "PCPI_CI", year = "2009")
    objects = []
    data_objects = get_xml_doc(variable, year).xpath("//Data")
    data_objects.each do |data|
      object = BigDecimal.new(data.attr("DataValue"))
      objects << object
    end
    return objects
  end

  def get_data_objects(variable = "PCPI_CI", year = "2009")
    objects = []
    data_objects = get_xml_doc(variable, year).xpath("//Data")
    data_objects.each do |data|
      objects << data
    end
    return objects
  end

  def get_annual_data(variable = "PCPI_CI", msa = "12060")
    objects = []
    
    get_years.each do |year|
      data_objects = get_xml_doc(variable, year).xpath("//Data")
      data_objects.each do |data|
        if (data.attr("GeoFips") == msa)
          datetime = DateTime.new(year.to_i, 1, 1).utc
          value = data.attr("DataValue").to_i
          objects << [datetime, value]
        end
      end
    end
    
    return objects
  end

  private
  def get_years
    return YAML.load_file("#{Rails.root}/config/bea_params.yml")['years']
  end
  
  def get_xml_doc(variable, year)
    url = build_request(variable, year)
    doc = Nokogiri::XML(open(url))
    return doc 
  end
  
  def build_request(variable, year)
    request_base = @base_uri + "?&UserID=" + @key 
    request_methods = "&method=GetData&datasetname=RegionalData&KeyCode=" + variable
    request_geography = "&GeoFIPS=" + @fips
    request_time = "&Year=" + year
    request_format = "&ResultFormat=" + @format
    
    return request_base + request_methods + request_geography + request_time + request_format
  end
end