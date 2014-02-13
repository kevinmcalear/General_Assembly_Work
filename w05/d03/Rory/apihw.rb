require 'httparty'
#require 'json'


  def get_avg_covered_charge(procedure, provider_name)
    procedure = procedure.gsub(" ", "+")
    provider_name = provider_name.gsub(" ", "+")
    from_medicare_as_hash = HTTParty.get("http://data.cms.gov/resource/97k6-zzx3.json?provider_state=NY&drg_definition=#{procedure}&provider_name=#{provider_name}")
    return from_medicare_as_hash[0]["average_covered_charges"]
  end

puts get_avg_covered_charge("885 - PSYCHOSES", "BETH ISRAEL MEDICAL CENTER")