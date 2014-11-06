require 'test_helper'

class Api::V1::TodosControllerTest < ActionController::TestCase

  setup do
    @person = todos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todos)
 end
end