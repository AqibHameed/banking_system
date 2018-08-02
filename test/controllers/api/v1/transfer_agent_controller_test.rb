require 'test_helper'

class Api::V1::TransferAgentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_transfer_agent_create_url
    assert_response :success
  end

end
