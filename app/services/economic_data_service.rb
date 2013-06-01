class EconomicDataService
  def initialize(key = nil, fips = nil)
    @key ||= "0C2DB8A8-4910-4624-B298-41F283F9A74C"
    @fips ||= "MSA"
    @format ||= "XML"
    @base_uri = "http://www.bea.gov/api/data/"
    @test = "http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=STATE&Year=2009&ResultFormat=XML&"
  end

  def get_fips_list
    fips = []
    data_objects = get_xml_doc.xpath("//Data")
    data_objects.each do |data|
      fip = data.attr('GeoFips')
      fips << fip
    end
    return fips
  end

  def get_data_objects
    objects = []
    data_objects = get_xml_doc.xpath("//Data")
    data_objects.each do |data|
      objects << data
    end
    return objects
  end

  private
  def get_xml_doc
    url = build_request("2009", "PCPI_CI")
    doc = Nokogiri::XML(open(url))
    return doc 
  end
  
  def build_request(year, variable)
    request_base = @base_uri + "?&UserID=" + @key 
    request_methods = "&method=GetData&datasetname=RegionalData&KeyCode=" + variable
    request_geography = "&GeoFIPS=" + @fips
    request_time = "&Year=" + year
    request_format = "&ResultFormat=" + @format
    
    return request_base + request_methods + request_geography + request_time + request_format
  end
end

=begin
GDP_MP  MSA annual product  Gross Domestic Product (GDP)
RGDP_MP  MSA annual product  Real GDP
PCRGDP_MP  MSA annual product  Per capita Real GDP
TPI_MI  MSA annual income  Total Personal Income
POP_MI  MSA annual income  Population
PCPI_MI  MSA annual income Per Capita personal income
NFPI_MI  MSA annual income  Nonfarm personal income
FPI_MI  MSA annual income  Farm income
EARN_MI  MSA annual income  Earnings by place of work
CGSI_MI  MSA annual income  Contributions for government social insurance
NE_MI  MSA annual income  Net Earnings by place of residence
DIR_MI  MSA annual income  Dividends, interest, and rent

PCTR_MI  MSA annual income  Personal current  transfer receipts
WS_MI   MSA annual income  Wage and salary disbursements
SUPP_MI  MSA annual income  Supplements to wages and salaries
PROP_MI  MSA annual income  Proprietors Income
EMP000_MI  MSA annual income  Total Employment  (full and part time)
EMP100_MI  MSA annual income  Wage and salary employment
EMP200_MI  MSA annual income  Proprietors employment
PJEARN_MI  MSA annual income  Average earnings per job
PJWS_MI  MSA annual income  Average wage per job
PJCOMP_MI  MSA annual income  Average compensation per job
=end