class TeamTypesController < ApplicationController
  def index
    matching_team_types = TeamType.all

    @list_of_team_types = matching_team_types.order({ :created_at => :desc })

    render({ :template => "team_types/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_team_types = TeamType.where({ :id => the_id })

    @the_team_type = matching_team_types.at(0)

    render({ :template => "team_types/show.html.erb" })
  end

  def create
    the_team_type = TeamType.new
    the_team_type.specialpower = params.fetch("query_specialpower")

    if the_team_type.valid?
      the_team_type.save
      redirect_to("/team_types", { :notice => "Team type created successfully." })
    else
      redirect_to("/team_types", { :notice => "Team type failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_team_type = TeamType.where({ :id => the_id }).at(0)

    the_team_type.specialpower = params.fetch("query_specialpower")

    if the_team_type.valid?
      the_team_type.save
      redirect_to("/team_types/#{the_team_type.id}", { :notice => "Team type updated successfully."} )
    else
      redirect_to("/team_types/#{the_team_type.id}", { :alert => "Team type failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_team_type = TeamType.where({ :id => the_id }).at(0)

    the_team_type.destroy

    redirect_to("/team_types", { :notice => "Team type deleted successfully."} )
  end
end
