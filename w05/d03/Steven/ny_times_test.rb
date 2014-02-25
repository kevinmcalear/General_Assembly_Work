
require 'pry'
require "HTTParty"

key = cc083ebf502d2ebf0f055f3d4d13eaa2:16:68819268



http://api.nytimes.com/svc/search/v2/articlesearch.json?fq=brussel+sprouts&facet_field=day_of_week&begin_date=20120101&end_date=20140101&api-key=cc083ebf502d2ebf0f055f3d4d13eaa2:16:68819268


from_times = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?fq=brussel+sprouts&facet_field=day_of_week&begin_date=20120101&end_date=20140101&api-key=cc083ebf502d2ebf0f055f3d4d13eaa2:16:68819268")
times_hash = JSON(from_times)


