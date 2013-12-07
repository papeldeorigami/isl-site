class PagesController < ApplicationController
  def index
    @pages = PgSearch.multisearch(params[:"search-query"])
  end
end
