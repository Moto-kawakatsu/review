require 'test_helper'

class RamenReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ramen_reviews_index_url
    assert_response :success
  end

end
