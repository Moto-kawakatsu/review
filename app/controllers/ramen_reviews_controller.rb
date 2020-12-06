class RamenReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @ramen_shop = RamenShop.find(params[:ramen_shop_id])
    @ramen_reviews = @ramen_shop.ramen_reviews
  end

  def create
    @review = RamenReview.new(ramen_review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to ramen_shop_ramen_reviews_path(@review.ramen_shop)
    else
      @ramen_shop = RamenShop.find(params[:ramen_shop_id])
      render "ramen_shops/show"
    end
  end

  private
  def ramen_review_params
    params.permit(:ramen_shop_id, :score, :content)
  end
end
