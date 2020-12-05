class RamenReviewsController < ApplicationController
  def index
  end

  def create
    @review = Review.new(ramen_review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to ramen_shop_ramen_reviews_path(@review.ramen_shop)
    else
      @ramen_shop = RamenShop.find(params[:id])
      render "ramen_shops/show"
    end
  end

  private
  def ramen_review_params
    params.require(:ramen_review).permit(:ramen_shop_id, :score, :content)
  end
end
