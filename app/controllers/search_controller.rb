class SearchController < ApplicationController
  def index
    @search_query = params[:"search-query"]
    #@documents = PgSearch.multisearch(params[:"search-query"])

    delimiter = "<br>"
    @documents = PgSearch.multisearch(@search_query).select("ts_headline(pg_search_documents.content, plainto_tsquery('english', ''' ' || '#{@query}' || ' ''' || ':*'),  'MaxFragments=3, MinWords=10, MaxWords=12, FragmentDelimiter=\" ...#{delimiter} \", StartSel=\"<em class=highlight>\", StopSel=\"</em>\"') AS excerpt")
  end
end
