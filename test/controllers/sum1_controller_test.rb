require 'test_helper'

class Sum1ControllerTest < ActionDispatch::IntegrationTest
  test "should get sum2" do
    get sum1_sum2_url
    assert_response :success
  end

end
