module PagesHelper
  def years
    return [ ["2001", "2001"],
             ["2002", "2002"],
             ["2003", "2003"],
             ["2004", "2004"],
             ["2005", "2005"],
             ["2006", "2006"],
             ["2007", "2007"],
             ["2008", "2008"],
             ["2009", "2009"],
             ["2010", "2010"],
             ["2011", "2011"] ]
  end
    
  def key_codes
    return YAML.load_file("#{Rails.root}/config/bea_params.yml")['variable_translations']
  end

  def msas
    return YAML.load_file("#{Rails.root}/config/bea_params.yml")['msa_translations']
  end
end