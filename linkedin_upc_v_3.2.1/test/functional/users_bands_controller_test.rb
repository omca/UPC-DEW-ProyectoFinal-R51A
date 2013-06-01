require 'test_helper'

class UsersBandsControllerTest < ActionController::TestCase
  setup do
    @users_band = users_bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_band" do
    assert_difference('UsersBand.count') do
      post :create, users_band: { band_id: @users_band.band_id, create_user: @users_band.create_user, edit_user: @users_band.edit_user, user_id: @users_band.user_id }
    end

    assert_redirected_to users_band_path(assigns(:users_band))
  end

  test "should show users_band" do
    get :show, id: @users_band
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_band
    assert_response :success
  end

  test "should update users_band" do
    put :update, id: @users_band, users_band: { band_id: @users_band.band_id, create_user: @users_band.create_user, edit_user: @users_band.edit_user, user_id: @users_band.user_id }
    assert_redirected_to users_band_path(assigns(:users_band))
  end

  test "should destroy users_band" do
    assert_difference('UsersBand.count', -1) do
      delete :destroy, id: @users_band
    end

    assert_redirected_to users_bands_path
  end
end
