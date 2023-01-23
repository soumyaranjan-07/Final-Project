require 'test_helper'

class AdfeedbackControllerTest < ActionDispatch::IntegrationTest
  test "should get feedback" do
    get adfeedback_feedback_url
    assert_response :success
  end

end
