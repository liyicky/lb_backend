require 'test_helper'

class ClumpsControllerTest < ActionController::TestCase
  setup do
    @clump = clumps(:one)
    @update = {
      url:    "http://www.google.com",
      shit:   false }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clumps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clump" do
    assert_difference('Clump.count') do
      post :create, clump: @update
    end

    assert_redirected_to clump_path(assigns(:clump))
  end

  test "should show clump" do
    get :show, id: @clump
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clump
    assert_response :success
  end

  test "should update clump" do
    patch :update, id: @clump, clump: @update 
    assert_redirected_to clump_path(assigns(:clump))
  end

  test "should destroy clump" do
    assert_difference('Clump.count', -1) do
      delete :destroy, id: @clump
    end

    assert_redirected_to clumps_path
  end
end
