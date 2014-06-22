require 'test_helper'

class JaccardControllerTest < ActionController::TestCase
  test "should get productos" do
    get :productos
    assert_response :success
  end

end
