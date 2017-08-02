class ResultsController < ApplicationController
  def index
    # PgSearch::Multisearch.rebuild(jam)
    @pg_search_documents = Jam.search_by_name(params[:query])
    if @pg_search_documents.count == 1
      redirect_to jam_path(@pg_search_documents.first)
    end
  end

end
