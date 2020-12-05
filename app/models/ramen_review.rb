class RamenReview < ApplicationRecord
  belongs_to :user
  belongs_to :ramen_shop
end
