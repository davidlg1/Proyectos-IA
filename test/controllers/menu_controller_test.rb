require 'test_helper'

class MenuControllerTest < ActionController::TestCase
  test "should get opciones" do
    get :opciones
    assert_response :success
  end

end
