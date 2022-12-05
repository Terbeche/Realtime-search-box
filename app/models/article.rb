class Article < ApplicationRecord
  belongs_to :user

  def self.search(params)
    if params[:query].blank?
      all
    elsif where(
      'title LIKE ? OR content LIKE ? ',
      "%#{sanitize_sql_like(params[:query])}%", "%#{sanitize_sql_like(params[:query])}%"
    ).empty?
      none
    else
      where(
        'title LIKE ? OR content LIKE ? ',
        "%#{sanitize_sql_like(params[:query])}%", "%#{sanitize_sql_like(params[:query])}%"
      )
    end
  end

  validates :title, presence: true, length: { maximum: 250 }
  validates :content, presence: true
end
