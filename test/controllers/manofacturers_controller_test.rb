require 'test_helper'

class ManofacturersControllerTest < ActionController::TestCase
  setup do
    @manofacturer = manofacturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manofacturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manofacturer" do
    assert_difference('Manofacturer.count') do
      post :create, manofacturer: { name: @manofacturer.name, video: @manofacturer.video }
    end

    assert_redirected_to manofacturer_path(assigns(:manofacturer))
  end

  test "should show manofacturer" do
    get :show, id: @manofacturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manofacturer
    assert_response :success
  end

  test "should update manofacturer" do
    patch :update, id: @manofacturer, manofacturer: { name: @manofacturer.name, video: @manofacturer.video }
    assert_redirected_to manofacturer_path(assigns(:manofacturer))
  end

  test "should destroy manofacturer" do
    assert_difference('Manofacturer.count', -1) do
      delete :destroy, id: @manofacturer
    end

    assert_redirected_to manofacturers_path
  end
end
