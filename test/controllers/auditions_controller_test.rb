require 'test_helper'

class AuditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get auditions_info_url
    assert_response :success
  end

end
