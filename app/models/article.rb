class Article < ApplicationRecord
  def self.search(params)
    if params[:query].blank?
      all
    else
      where(
        # 'title LIKE ?', "%#{sanitize_sql_like(params[:query])}%"
        "title LIKE ?", "%#{params[:query]}%"
         )
    end
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
