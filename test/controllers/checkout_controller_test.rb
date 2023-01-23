require 'test_helper'

class CheckoutControllerTest < ActionDispatch::IntegrationTest
  test "should get payment" do
    get checkout_payment_url
    assert_response :success
  end

end
