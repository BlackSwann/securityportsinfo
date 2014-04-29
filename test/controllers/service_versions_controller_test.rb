require 'test_helper'

class ServiceVersionsControllerTest < ActionController::TestCase
  setup do
    @service_version = service_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_version" do
    assert_difference('ServiceVersion.count') do
      post :create, service_version: { dateBegin: @service_version.dateBegin, dateEnd: @service_version.dateEnd, service_id: @service_version.service_id, version: @service_version.version }
    end

    assert_redirected_to service_version_path(assigns(:service_version))
  end

  test "should show service_version" do
    get :show, id: @service_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_version
    assert_response :success
  end

  test "should update service_version" do
    patch :update, id: @service_version, service_version: { dateBegin: @service_version.dateBegin, dateEnd: @service_version.dateEnd, service_id: @service_version.service_id, version: @service_version.version }
    assert_redirected_to service_version_path(assigns(:service_version))
  end

  test "should destroy service_version" do
    assert_difference('ServiceVersion.count', -1) do
      delete :destroy, id: @service_version
    end

    assert_redirected_to service_versions_path
  end
end
