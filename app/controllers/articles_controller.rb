class ArticlesController < ApplicationController
  def index
    @articles = Article.search(params)
    @search = current_user.searches.new(searching_for: params[:query], user_id: current_user.id)

    if Search.exists?(searching_for: @search.searching_for)
      @original_search = Search.find_by(searching_for: @search.searching_for)
      @original_search.frequency += 1
      @original_search.save
      # redirect_to articles_path
    elsif @search.save
      # redirect_to articles_path
    else
      render :new
    end
  end

  # def index
  #   if params[:query].present?
  #     @articles = Article.where("title LIKE ?", "%#{params[:query]}%")
  #   else
  #     @articles = Article.all
  #   end

  #   # Not too clean but it works!
  #   if turbo_frame_request?
  #     render partial: "articles", locals: { articles: @articles }
  #   else
  #     render :index
  #   end
  # end

  # def index
  #   @articles = Article.all
  #   @articles = if params[:searching_for] && params[:searching_for] != ''
  #                 @articles.where('title like ?',
  #                                 '%# {params[:searching_for]}%')
  #                 puts "find articles"
  #                 puts @articles
  #               else
  #                 puts "no articles found"
  #                 puts @articles
  #                 @articles.all
  #               end
  # end

  def show
    @article = Artice.find params[:id]
  end
end
