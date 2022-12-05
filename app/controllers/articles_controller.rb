class ArticlesController < ApplicationController
  def index
    @articles = Article.search(params)
    @search = current_user.searches.new(searching_for: params[:query], user_id: current_user.id)

    if @search.searching_for
      @search.searching_for = if @search.searching_for[0] == ' ' || @search.searching_for[-1] == ' '
                                @search.searching_for.strip!
                              else
                                @search.searching_for
                              end
    end

    return unless @search.searching_for and !@search.searching_for.empty?

    if Search.exists?(searching_for: @search.searching_for)
      @original_search = Search.find_by(searching_for: @search.searching_for)
      @original_search.frequency += 1
      @original_search.save
    else
      @search.save
    end
  end

  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
    respond_to do |format|
      format.html { render :new, locals: { article: @article } }
    end
  end

  def article_params
    params
      .require(:article)
      .permit(:title, :content)
      .merge(user_id: params[:user_id])
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to articles_path(@article.user_id, @article.id)
    else
      render :new
    end
  end
end
