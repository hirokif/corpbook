require 'test_helper'

class GrpsControllerTest < ActionController::TestCase
  setup do
    @grp = grps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grp" do
    assert_difference('Grp.count') do
      post :create, grp: { grp_name: @grp.grp_name }
    end

    assert_redirected_to grp_path(assigns(:grp))
  end

  test "should show grp" do
    get :show, id: @grp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grp
    assert_response :success
  end

  test "should update grp" do
    put :update, id: @grp, grp: { grp_name: @grp.grp_name }
    assert_redirected_to grp_path(assigns(:grp))
  end

  test "should destroy grp" do
    assert_difference('Grp.count', -1) do
      delete :destroy, id: @grp
    end

    assert_redirected_to grps_path
  end
end
