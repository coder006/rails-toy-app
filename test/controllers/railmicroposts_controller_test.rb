require 'test_helper'

class RailmicropostsControllerTest < ActionController::TestCase
  setup do
    @railmicropost = railmicroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railmicroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railmicropost" do
    assert_difference('Railmicropost.count') do
      post :create, railmicropost: { content: @railmicropost.content, user_id: @railmicropost.user_id }
    end

    assert_redirected_to railmicropost_path(assigns(:railmicropost))
  end

  test "should show railmicropost" do
    get :show, id: @railmicropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railmicropost
    assert_response :success
  end

  test "should update railmicropost" do
    patch :update, id: @railmicropost, railmicropost: { content: @railmicropost.content, user_id: @railmicropost.user_id }
    assert_redirected_to railmicropost_path(assigns(:railmicropost))
  end

  test "should destroy railmicropost" do
    assert_difference('Railmicropost.count', -1) do
      delete :destroy, id: @railmicropost
    end

    assert_redirected_to railmicroposts_path
  end
end
