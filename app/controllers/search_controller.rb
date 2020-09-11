class SearchController < ApplicationController
  def index
    @results = SearchResults.new.get_poems(params[:author])
  end
end
