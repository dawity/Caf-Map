require 'test_helper'

class CafeLocsControllerTest < ActionController::TestCase
  setup do
    @cafe_loc = cafe_locs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafe_locs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafe_loc" do
    assert_difference('CafeLoc.count') do
      post :create, cafe_loc: { address: @cafe_loc.address, description: @cafe_loc.description, latitude: @cafe_loc.latitude, longitude: @cafe_loc.longitude, title: @cafe_loc.title }
    end

    assert_redirected_to cafe_loc_path(assigns(:cafe_loc))
  end

  test "should show cafe_loc" do
    get :show, id: @cafe_loc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafe_loc
    assert_response :success
  end

  test "should update cafe_loc" do
    patch :update, id: @cafe_loc, cafe_loc: { address: @cafe_loc.address, description: @cafe_loc.description, latitude: @cafe_loc.latitude, longitude: @cafe_loc.longitude, title: @cafe_loc.title }
    assert_redirected_to cafe_loc_path(assigns(:cafe_loc))
  end

  test "should destroy cafe_loc" do
    assert_difference('CafeLoc.count', -1) do
      delete :destroy, id: @cafe_loc
    end

    assert_redirected_to cafe_locs_path
  end
end
