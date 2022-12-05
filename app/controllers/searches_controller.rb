class SearchesController < ApplicationController
  def index
    @searches = current_user.searches
  end

  def show
    @search = Search.find(params[:id])
  end
end
