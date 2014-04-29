require 'test_helper'

class ServiceVersionSosControllerTest < ActionController::TestCase
  setup do
    @service_version_so = service_version_sos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_version_sos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_version_so" do
    assert_difference('ServiceVersionSo.count') do
      post :create, service_version_so: { service_id: @service_version_so.service_id, version_so_id: @service_version_so.version_so_id }
    end

    assert_redirected_to service_version_so_path(assigns(:service_version_so))
  end

  test "should show service_version_so" do
    get :show, id: @service_version_so
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_version_so
    assert_response :success
  end

  test "should update service_version_so" do
    patch :update, id: @service_version_so, service_version_so: { service_id: @service_version_so.service_id, version_so_id: @service_version_so.version_so_id }
    assert_redirected_to service_version_so_path(assigns(:service_version_so))
  end

  test "should destroy service_version_so" do
    assert_difference('ServiceVersionSo.count', -1) do
      delete :destroy, id: @service_version_so
    end

    assert_redirected_to service_version_sos_path
  end
end
