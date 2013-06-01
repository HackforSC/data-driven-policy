class PagesController < ApplicationController
  def home
#    @data = EconomicDataService.get_data
    @data = HTTParty.get('http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=STATE&Year=2009&ResultFormat=XML&')
 #   @new_data = Nokogiri.XML(@data.read)
    @new_data = Nokogiri::XML(open('http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=STATE&Year=2009&ResultFormat=XML&'))
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end
end
