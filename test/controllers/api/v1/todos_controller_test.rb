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

  test "should return new todo" do
    get :create, id: @todo
    assert_not_nil :id
  end

  test "should update todo" do
     patch :update, id: @todo
     @todo.reload
    {:id => @todo.id, title: "New Title"}
  end

  test "should destroy todo" do
    get :destroy, id: @todo
    @todo.destroy
    assert_nil @todo.find_by(:id)
  end


end