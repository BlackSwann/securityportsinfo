require 'test_helper'

class TypeOfServicesControllerTest < ActionController::TestCase
  setup do
    @type_of_service = type_of_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_of_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_of_service" do
    assert_difference('TypeOfService.count') do
      post :create, type_of_service: { description: @type_of_service.description, name: @type_of_service.name }
    end

    assert_redirected_to type_of_service_path(assigns(:type_of_service))
  end

  test "should show type_of_service" do
    get :show, id: @type_of_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_of_service
    assert_response :success
  end

  test "should update type_of_service" do
    patch :update, id: @type_of_service, type_of_service: { description: @type_of_service.description, name: @type_of_service.name }
    assert_redirected_to type_of_service_path(assigns(:type_of_service))
  end

  test "should destroy type_of_service" do
    assert_difference('TypeOfService.count', -1) do
      delete :destroy, id: @type_of_service
    end

    assert_redirected_to type_of_services_path
  end
end
