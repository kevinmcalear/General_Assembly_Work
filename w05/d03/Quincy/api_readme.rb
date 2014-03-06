def get_train_schedule(station, train_id)
  from_njtrans = HTTParty.get("http://198.177.2.186:8088/CooCooWeb.aspx?sid=#{station}&train=#{train_id}")
  from_njtrans_as_hash = (from_njtrans)
  return from_njtrans_as_hash["results"][0]["previewUrl"]
end
