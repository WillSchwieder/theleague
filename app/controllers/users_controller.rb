class UsersController < ApplicationController
  def sign_up
    render({ :template => "user_templates/sign_up.html.erb" })
  end

  def sign_out
    render({ :template => "user_templates/sign_out.html.erb" })
  end

  def sign_in
    render({ :template => "user_templates/sign_in.html.erb" })
  end
end
