require "test_helper"

class LaptopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laptops_index_url
    assert_response :success
  end
end
