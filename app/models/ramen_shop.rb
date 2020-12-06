class RamenShop < ApplicationRecord
    has_many :ramen_reviews, dependent: :destroy
    def avg_score
        unless self.ramen_reviews.empty?
            ramen_reviews.average(:score).round(1).to_f
        else
            0.0
        end
    end

    def ramen_review_score_percentage
        unless self.ramen_reviews.empty?
            ramen_reviews.average(:score).round(1).to_f*100/5
        else
            0.0
        end
    end
end
