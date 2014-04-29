require 'test_helper'

class PortServicesControllerTest < ActionController::TestCase
  setup do
    @port_service = port_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:port_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create port_service" do
    assert_difference('PortService.count') do
      post :create, port_service: { port_id: @port_service.port_id, service_id: @port_service.service_id }
    end

    assert_redirected_to port_service_path(assigns(:port_service))
  end

  test "should show port_service" do
    get :show, id: @port_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @port_service
    assert_response :success
  end

  test "should update port_service" do
    patch :update, id: @port_service, port_service: { port_id: @port_service.port_id, service_id: @port_service.service_id }
    assert_redirected_to port_service_path(assigns(:port_service))
  end

  test "should destroy port_service" do
    assert_difference('PortService.count', -1) do
      delete :destroy, id: @port_service
    end

    assert_redirected_to port_services_path
  end
end
