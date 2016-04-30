require 'test_helper'

class RailusersControllerTest < ActionController::TestCase
  setup do
    @railuser = railusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railuser" do
    assert_difference('Railuser.count') do
      post :create, railuser: { email: @railuser.email, name: @railuser.name }
    end

    assert_redirected_to railuser_path(assigns(:railuser))
  end

  test "should show railuser" do
    get :show, id: @railuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railuser
    assert_response :success
  end

  test "should update railuser" do
    patch :update, id: @railuser, railuser: { email: @railuser.email, name: @railuser.name }
    assert_redirected_to railuser_path(assigns(:railuser))
  end

  test "should destroy railuser" do
    assert_difference('Railuser.count', -1) do
      delete :destroy, id: @railuser
    end

    assert_redirected_to railusers_path
  end
end
