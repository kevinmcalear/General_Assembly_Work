class WelcomeController < ApplicationController
  def index
    @price = get_current_price
  end

private

  def get_current_price
    from_bitstamp = HTTParty.get("https://www.bitstamp.net/api/ticker/")
    return from_bitstamp["last"]
  end

end