require 'test_helper'

class EdgeTypesControllerTest < ActionController::TestCase
  setup do
    @edge_type = edge_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edge_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edge_type" do
    assert_difference('EdgeType.count') do
      post :create, edge_type: @edge_type.attributes
    end

    assert_redirected_to edge_type_path(assigns(:edge_type))
  end

  test "should show edge_type" do
    get :show, id: @edge_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edge_type
    assert_response :success
  end

  test "should update edge_type" do
    put :update, id: @edge_type, edge_type: @edge_type.attributes
    assert_redirected_to edge_type_path(assigns(:edge_type))
  end

  test "should destroy edge_type" do
    assert_difference('EdgeType.count', -1) do
      delete :destroy, id: @edge_type
    end

    assert_redirected_to edge_types_path
  end
end
