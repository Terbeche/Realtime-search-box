class User < ApplicationRecord
    has_many :searches, dependent: :destroy
end
