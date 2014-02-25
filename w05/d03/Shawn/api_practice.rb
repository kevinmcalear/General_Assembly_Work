# api_practice.rb
require "HTTParty"
require "JSON"


def get_front_page_articles(year, month, day)
  date = year.to_s+month.to_s+day.to_s
  #returns front page news from a specific date
  binding.pry
  nyt_results = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?fq=type_of_material:front+page&begin_date=#{date}&end_date=#{date}&sort=oldest&api-key=70c6055f9f80068e5a9a5058008bfa37:13:68818454")

  get_headline_and_first_paragraph(nyt_results)
end


  #get the headline & first paragraph from each
  def get_headline_and_first_paragraph(results)

   headline_and_lead_paragraph = {}

   nyt_results["response"]["docs"].each do |result|
    headline_and_lead_paragraph[result["headline"]] = result["first_paragraph"]
  end
end



