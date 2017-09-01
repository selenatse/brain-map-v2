require 'test_helper'

class EducatorsControllerTest < ActionController::TestCase
  setup do
    @educator = educators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educator" do
    assert_difference('Educator.count') do
      post :create, educator: { name: @educator.name, role: @educator.role, user_userid: @educator.user_userid }
    end

    assert_redirected_to educator_path(assigns(:educator))
  end

  test "should show educator" do
    get :show, id: @educator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @educator
    assert_response :success
  end

  test "should update educator" do
    patch :update, id: @educator, educator: { name: @educator.name, role: @educator.role, user_userid: @educator.user_userid }
    assert_redirected_to educator_path(assigns(:educator))
  end

  test "should destroy educator" do
    assert_difference('Educator.count', -1) do
      delete :destroy, id: @educator
    end

    assert_redirected_to educators_path
  end
end
