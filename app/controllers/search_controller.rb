class SearchController < ApplicationController
  def index
    @documents = PgSearch.multisearch(params[:"search-query"])
  end
end
