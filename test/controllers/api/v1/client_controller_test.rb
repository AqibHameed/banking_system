require 'test_helper'

class Api::V1::ClientControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_client_create_url
    assert_response :success
  end

end
