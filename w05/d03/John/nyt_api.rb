require 'httparty'
require 'json'
require 'pry'

def nytimes_call(company)
  search_company = company.gsub(' ', '+')

  a = HTTParty.get "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{search_company}&api-key=A08F1BADDD5D5304EAE3C05B37F92999:8:68849348"

  web_url = a["response"]["docs"].first["web_url"]
  nyt_title = a["response"]["docs"].first["source"]
  image_url_ending = a["response"]["docs"].first["multimedia"][1]["url"]
  publication_date = a["response"]["docs"].first["pub_date"]
  headline = a["response"]["docs"].first["headline"]["seo"]
  author_first_name = a["response"]["docs"].first["byline"]["person"].first["firstname"]
  author_last_name = a["response"]["docs"].first["byline"]["person"].first["lastname"].downcase.capitalize

  image_url = "http://static01.nyt.com/" + image_url_ending

binding.pry

  puts nyt_title
  puts web_url
  puts image_url
  # puts publication_date.to_date.strftime("%A, %B %e, %Y")
  puts "#{headline}, by #{author_first_name} #{author_last_name}"
end

nytimes_call("Pam Tanowitz")