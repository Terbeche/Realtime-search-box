class Search < ApplicationRecord
  belongs_to :user

  validates :searching_for, presence: true
end
