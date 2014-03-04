require 'uri'
require 'httparty'
require 'active_support'
require 'pry'

# Functions to def:
#   monolingual_def_exists?
#   monolingual_def
#   bilingual_def


def monolingual_definition(word_to_define)
  uri = "http://en.wiktionary.org/w/api.php?action=parse&prop=wikitext&page=#{word_to_define}&format=json"
  encoded_uri = URI::encode(uri)
  response = HTTParty.get(encoded_uri)
  binding.pry

  

  # decode_response =  ActiveSupport::JSON.decode(response)
  return response["parse"]["wikitext"]["*"].split("\n")
end

puts monolingual_definition("obstreperous")