require 'test_helper'

class ConcertsControllerTest < ActionController::TestCase
  setup do
    @concert = concerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concert" do
    assert_difference('Concert.count') do
      post :create, concert: { band_id: @concert.band_id, begin_time: @concert.begin_time, date: @concert.date, end_time: @concert.end_time, local_id: @concert.local_id, name: @concert.name, status: @concert.status }
    end

    assert_redirected_to concert_path(assigns(:concert))
  end

  test "should show concert" do
    get :show, id: @concert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concert
    assert_response :success
  end

  test "should update concert" do
    patch :update, id: @concert, concert: { band_id: @concert.band_id, begin_time: @concert.begin_time, date: @concert.date, end_time: @concert.end_time, local_id: @concert.local_id, name: @concert.name, status: @concert.status }
    assert_redirected_to concert_path(assigns(:concert))
  end

  test "should destroy concert" do
    assert_difference('Concert.count', -1) do
      delete :destroy, id: @concert
    end

    assert_redirected_to concerts_path
  end
end
