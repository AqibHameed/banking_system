require 'test_helper'

class Api::V1::BankControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_bank_create_url
    assert_response :success
  end

end
