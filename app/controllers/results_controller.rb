class ResultsController < ApplicationController
  def index
    # PgSearch::Multisearch.rebuild(jam)
    @pg_search_documents = Jam.search_by_name(params[:search]).first
    if @pg_search_documents
      redirect_to jam_path(@pg_search_documents)
    else
      redirect_to root_path
    end
  end

  def empty?
    City.search_city(params[:query]).empty? || City.search_city(params[:query])[0] == ""
  end
end
