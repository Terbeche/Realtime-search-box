class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all.limit(100)
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
