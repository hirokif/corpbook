require 'test_helper'

class CorpsControllerTest < ActionController::TestCase
  setup do
    @corp = corps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corp" do
    assert_difference('Corp.count') do
      post :create, corp: { corp_add: @corp.corp_add, corp_fax: @corp.corp_fax, corp_name: @corp.corp_name, corp_no: @corp.corp_no, corp_tel: @corp.corp_tel }
    end

    assert_redirected_to corp_path(assigns(:corp))
  end

  test "should show corp" do
    get :show, id: @corp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corp
    assert_response :success
  end

  test "should update corp" do
    put :update, id: @corp, corp: { corp_add: @corp.corp_add, corp_fax: @corp.corp_fax, corp_name: @corp.corp_name, corp_no: @corp.corp_no, corp_tel: @corp.corp_tel }
    assert_redirected_to corp_path(assigns(:corp))
  end

  test "should destroy corp" do
    assert_difference('Corp.count', -1) do
      delete :destroy, id: @corp
    end

    assert_redirected_to corps_path
  end
end
