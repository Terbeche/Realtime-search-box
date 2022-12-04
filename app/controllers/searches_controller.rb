class SearchesController < ApplicationController
  def index
    @searhes = current_user.searches
  end

  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
    respond_to do |format|
      format.html { render :new, locals: { search: @search } }
    end
  end

  def search_params
    params
      .require(:search)
      .permit(:searching_for)
      .merge(user_id: params[:user_id])
  end

  def create
    @search = current_user.searches.new(search_params)
    if Search.exists?(searching_for: @search.searching_for)
      @original_search = Search.find_by(searching_for: @search.searching_for)
      @original_search.frequency += 1
      @original_search.save
      redirect_to users_path
    else
      if @search.save
        redirect_to users_path
      else
        render :new
      end
    end
  end

  def destroy
    @search = Search.find params[:id]
    @search.destroy
    redirect_to user_searches_path(@search.user_id)
  end
end
