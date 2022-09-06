require "test_helper"

class SavingsControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get savings_overview_url
    assert_response :success
  end
end
