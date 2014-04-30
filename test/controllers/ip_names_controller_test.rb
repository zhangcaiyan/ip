require 'test_helper'

class IpNamesControllerTest < ActionController::TestCase
  setup do
    @ip_name = ip_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ip_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip_name" do
    assert_difference('IpName.count') do
      post :create, ip_name: { is_valid: @ip_name.is_valid, name: @ip_name.name }
    end

    assert_redirected_to ip_name_path(assigns(:ip_name))
  end

  test "should show ip_name" do
    get :show, id: @ip_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ip_name
    assert_response :success
  end

  test "should update ip_name" do
    patch :update, id: @ip_name, ip_name: { is_valid: @ip_name.is_valid, name: @ip_name.name }
    assert_redirected_to ip_name_path(assigns(:ip_name))
  end

  test "should destroy ip_name" do
    assert_difference('IpName.count', -1) do
      delete :destroy, id: @ip_name
    end

    assert_redirected_to ip_names_path
  end
end
