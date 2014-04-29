require 'test_helper'

class VulnerabilitiesControllerTest < ActionController::TestCase
  setup do
    @vulnerability = vulnerabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vulnerabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vulnerability" do
    assert_difference('Vulnerability.count') do
      post :create, vulnerability: { description: @vulnerability.description, discovered: @vulnerability.discovered, name: @vulnerability.name, service_id: @vulnerability.service_id, service_version_id: @vulnerability.service_version_id }
    end

    assert_redirected_to vulnerability_path(assigns(:vulnerability))
  end

  test "should show vulnerability" do
    get :show, id: @vulnerability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vulnerability
    assert_response :success
  end

  test "should update vulnerability" do
    patch :update, id: @vulnerability, vulnerability: { description: @vulnerability.description, discovered: @vulnerability.discovered, name: @vulnerability.name, service_id: @vulnerability.service_id, service_version_id: @vulnerability.service_version_id }
    assert_redirected_to vulnerability_path(assigns(:vulnerability))
  end

  test "should destroy vulnerability" do
    assert_difference('Vulnerability.count', -1) do
      delete :destroy, id: @vulnerability
    end

    assert_redirected_to vulnerabilities_path
  end
end
