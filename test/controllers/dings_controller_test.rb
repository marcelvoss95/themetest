require 'test_helper'

class DingsControllerTest < ActionController::TestCase
  setup do
    @ding = dings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ding" do
    assert_difference('Ding.count') do
      post :create, ding: { zeug: @ding.zeug }
    end

    assert_redirected_to ding_path(assigns(:ding))
  end

  test "should show ding" do
    get :show, id: @ding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ding
    assert_response :success
  end

  test "should update ding" do
    patch :update, id: @ding, ding: { zeug: @ding.zeug }
    assert_redirected_to ding_path(assigns(:ding))
  end

  test "should destroy ding" do
    assert_difference('Ding.count', -1) do
      delete :destroy, id: @ding
    end

    assert_redirected_to dings_path
  end
end
