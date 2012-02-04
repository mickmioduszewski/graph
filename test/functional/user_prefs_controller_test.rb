require 'test_helper'

class UserPrefsControllerTest < ActionController::TestCase
  setup do
    @user_pref = user_prefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_prefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_pref" do
    assert_difference('UserPref.count') do
      post :create, user_pref: @user_pref.attributes
    end

    assert_redirected_to user_pref_path(assigns(:user_pref))
  end

  test "should show user_pref" do
    get :show, id: @user_pref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_pref
    assert_response :success
  end

  test "should update user_pref" do
    put :update, id: @user_pref, user_pref: @user_pref.attributes
    assert_redirected_to user_pref_path(assigns(:user_pref))
  end

  test "should destroy user_pref" do
    assert_difference('UserPref.count', -1) do
      delete :destroy, id: @user_pref
    end

    assert_redirected_to user_prefs_path
  end
end
