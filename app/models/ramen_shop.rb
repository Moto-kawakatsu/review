class RamenShop < ApplicationRecord
    has_many :ramen_reviews, dependent: :destroy
end
