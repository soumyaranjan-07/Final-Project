require 'test_helper'

class StudentcourseControllerTest < ActionDispatch::IntegrationTest
  test "should get mycourse" do
    get studentcourse_mycourse_url
    assert_response :success
  end

end
