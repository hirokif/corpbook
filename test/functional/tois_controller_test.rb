require 'test_helper'

class ToisControllerTest < ActionController::TestCase
  setup do
    @toi = tois(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tois)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toi" do
    assert_difference('Toi.count') do
      post :create, toi: { toi_name: @toi.toi_name, toi_no: @toi.toi_no }
    end

    assert_redirected_to toi_path(assigns(:toi))
  end

  test "should show toi" do
    get :show, id: @toi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toi
    assert_response :success
  end

  test "should update toi" do
    put :update, id: @toi, toi: { toi_name: @toi.toi_name, toi_no: @toi.toi_no }
    assert_redirected_to toi_path(assigns(:toi))
  end

  test "should destroy toi" do
    assert_difference('Toi.count', -1) do
      delete :destroy, id: @toi
    end

    assert_redirected_to tois_path
  end
end
