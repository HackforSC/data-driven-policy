class EconomicDataService
  include HTTParty

  def initialize(key, fips)
    @key ||= "0C2DB8A8-4910-4624-B298-41F283F9A74C"
    @fips ||= :msa
    @format ||= :xml
    @test = "http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=STATE&Year=2009&ResultFormat=XML&"
  end

  # this works in a browser
  #http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=STATE&Year=2009&ResultFormat=XML&

  base_uri 'http://www.bea.gov/api/data'

  def self.get_data#(dataset, fields = {})
    return get(@test)
  end

  def self.getPhotos(uid)
    return get('/services/rest/', :query => {
      :method => 'flickr.people.getPublicPhotos',
      :api_key => 'api key goes here',
      :user_id => uid})
  end
end