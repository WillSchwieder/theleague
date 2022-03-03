class UsersController < ApplicationController
  def user_profile
    render({ :template => "user_templates/user_home.html.erb" })
  end
end
