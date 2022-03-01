class UsersController < ApplicationController
  def user_sign_up
    render({ :template => "user_templates/sign_up.html.erb" })
  end

  def destroy_cookies
    reset_session

    redirect_to("/", { :notice => "See ya later!" })
  end

  def sign_in_form
    render({ :template => "user_templates/sign_in.html.erb" })
  end

  def verify_credentials
    redirect_to("/users/#{user.username}", { :notice => "Welcome, " + user.username + "!" })
  end

  def authenticate
    username = params.fetch("input_username")
    password = params.fetch("input_password")

    user = User.where({ :username => username }).at(0)

    if user == nil
      redirect_to("/user_sign_in", { :alert => "No one by that name here" })
    else
      if user.authenticate(password)
        session.store(:user_id, user.id)
        redirect_to("/", { :notice => "Welcome Back " + user.username + "!" })
      else
        redirect_to("/user_sign_in", { :alert => "Incorrect password" })
      end
    end
  end
end
