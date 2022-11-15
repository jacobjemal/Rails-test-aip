class PagesController < ApplicationController
  def home
    response = HTTParty.get("https://api.publicapis.org/categories")
    @response = JSON.parse(response.body)
    @categories = @response["categories"]

    @cat_fatcs = JSON.parse(HTTParty.get("https://cataas.com/api/tags").body)
  end
end
