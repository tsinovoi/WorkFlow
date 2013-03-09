require 'test_helper'

class SowsControllerTest < ActionController::TestCase
  setup do
    @sow = sows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sow" do
    assert_difference('Sow.count') do
      post :create, sow: { description: @sow.description }
    end

    assert_redirected_to sow_path(assigns(:sow))
  end

  test "should show sow" do
    get :show, id: @sow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sow
    assert_response :success
  end

  test "should update sow" do
    put :update, id: @sow, sow: { description: @sow.description }
    assert_redirected_to sow_path(assigns(:sow))
  end

  test "should destroy sow" do
    assert_difference('Sow.count', -1) do
      delete :destroy, id: @sow
    end

    assert_redirected_to sows_path
  end
end
