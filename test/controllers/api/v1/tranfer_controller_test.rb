require 'test_helper'

class Api::V1::TranferControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_tranfer_create_url
    assert_response :success
  end

end
