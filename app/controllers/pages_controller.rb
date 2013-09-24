class PagesController < ApplicationController
  def index
    @search = Cms::Page.search do
      keywords params[:"search-query"]
    end
    @pages = @search.results
  end
end
