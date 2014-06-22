require 'test_helper'

class ClassifierControllerTest < ActionController::TestCase
  test "should get consultas" do
    get :consultas
    assert_response :success
  end

end
