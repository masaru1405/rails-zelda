require "test_helper"

class ZeldaInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zelda_info_index_url
    assert_response :success
  end
end
