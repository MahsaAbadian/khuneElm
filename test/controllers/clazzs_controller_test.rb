require 'test_helper'

class ClazzsControllerTest < ActionController::TestCase
  setup do
    @clazz = clazzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clazzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clazz" do
    assert_difference('Clazz.count') do
      post :create, clazz: { description: @clazz.description, end_time: @clazz.end_time, name: @clazz.name, start_time: @clazz.start_time }
    end

    assert_redirected_to clazz_path(assigns(:clazz))
  end

  test "should show clazz" do
    get :show, id: @clazz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clazz
    assert_response :success
  end

  test "should update clazz" do
    patch :update, id: @clazz, clazz: { description: @clazz.description, end_time: @clazz.end_time, name: @clazz.name, start_time: @clazz.start_time }
    assert_redirected_to clazz_path(assigns(:clazz))
  end

  test "should destroy clazz" do
    assert_difference('Clazz.count', -1) do
      delete :destroy, id: @clazz
    end

    assert_redirected_to clazzs_path
  end
end
