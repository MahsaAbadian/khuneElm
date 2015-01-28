require 'test_helper'

class EnrolementsControllerTest < ActionController::TestCase
  setup do
    @enrolement = enrolements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrolements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolement" do
    assert_difference('Enrolement.count') do
      post :create, enrolement: { grade: @enrolement.grade }
    end

    assert_redirected_to enrolement_path(assigns(:enrolement))
  end

  test "should show enrolement" do
    get :show, id: @enrolement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolement
    assert_response :success
  end

  test "should update enrolement" do
    patch :update, id: @enrolement, enrolement: { grade: @enrolement.grade }
    assert_redirected_to enrolement_path(assigns(:enrolement))
  end

  test "should destroy enrolement" do
    assert_difference('Enrolement.count', -1) do
      delete :destroy, id: @enrolement
    end

    assert_redirected_to enrolements_path
  end
end
