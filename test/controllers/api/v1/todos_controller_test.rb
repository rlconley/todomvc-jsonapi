require 'test_helper'

class Api::V1::TodosControllerTest < ActionController::TestCase

  setup do
    @todo = todos(:one)
  end

  test "should get index" do
    get :index
    assert_response :ok
    assert_not_nil assigns(:todos)
  end

  test "should show todo" do
    get :show, id: @todo
    assert_response :ok
  end



end