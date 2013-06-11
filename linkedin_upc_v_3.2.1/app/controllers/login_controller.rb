class UsersController < ApplicationController
  # GET /users
  # GET /users.json

  def login
    session[:current_user_id] = "123456";
    @prueba = session[:current_user_id];
  end

  def index

    @users = User.all

    session[:current_user_id] = "123456";
    @prueba = session[:current_user_id];

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

end
