class PagesController < ApplicationController
  def home
#    doc = Nokogiri::XML(open('http://www.bea.gov/api/data/?&UserID=0C2DB8A8-4910-4624-B298-41F283F9A74C&method=GetData&datasetname=RegionalData&KeyCode=PCPI_CI&GeoFIPS=MSA&Year=2009&ResultFormat=XML&'))
#    variant = doc.xpath("//Data")
#    @objects = []
#    variant.each do |data|
#      @objects << data
#    end

    @objects = EconomicDataService.new.get_data
    
    respond_to do |format|
      format.json { }   
      format.xml  { }
      format.html  # this renders home.html.haml
    end 
  end
end
