class Article < ApplicationRecord
  belongs_to :user

  def self.search(params)
    if params[:query].blank?
      all
    else
      where(
        # 'title LIKE ?', "%#{sanitize_sql_like(params[:query])}%"
        'title LIKE ?', "%#{params[:query]}%"
      )
    end
  end
end
