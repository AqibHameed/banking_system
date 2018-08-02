require 'test_helper'

class Api::V1::AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_account_create_url
    assert_response :success
  end

end
