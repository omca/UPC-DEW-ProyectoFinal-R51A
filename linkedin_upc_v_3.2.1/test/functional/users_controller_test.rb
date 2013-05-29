require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { doc_number: @user.doc_number, doc_type_id: @user.doc_type_id, gender: @user.gender, last_name: @user.last_name, mail: @user.mail, name: @user.name, password: @user.password, surname: @user.surname, user_name: @user.user_name, user_type_id: @user.user_type_id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { doc_number: @user.doc_number, doc_type_id: @user.doc_type_id, gender: @user.gender, last_name: @user.last_name, mail: @user.mail, name: @user.name, password: @user.password, surname: @user.surname, user_name: @user.user_name, user_type_id: @user.user_type_id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
