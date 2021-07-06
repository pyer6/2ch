require 'test_helper'

class TalksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get talks_new_url
    assert_response :success
  end

end
