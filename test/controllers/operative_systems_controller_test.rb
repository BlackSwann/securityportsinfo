require 'test_helper'

class OperativeSystemsControllerTest < ActionController::TestCase
  setup do
    @operative_system = operative_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operative_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operative_system" do
    assert_difference('OperativeSystem.count') do
      post :create, operative_system: { description: @operative_system.description, name: @operative_system.name }
    end

    assert_redirected_to operative_system_path(assigns(:operative_system))
  end

  test "should show operative_system" do
    get :show, id: @operative_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operative_system
    assert_response :success
  end

  test "should update operative_system" do
    patch :update, id: @operative_system, operative_system: { description: @operative_system.description, name: @operative_system.name }
    assert_redirected_to operative_system_path(assigns(:operative_system))
  end

  test "should destroy operative_system" do
    assert_difference('OperativeSystem.count', -1) do
      delete :destroy, id: @operative_system
    end

    assert_redirected_to operative_systems_path
  end
end
