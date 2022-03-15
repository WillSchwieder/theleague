class TeamRostersController < ApplicationController
  def index
    matching_team_rosters = TeamRoster.all

    @list_of_team_rosters = matching_team_rosters.order({ :created_at => :desc })

    render({ :template => "team_rosters/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_team_rosters = TeamRoster.where({ :id => the_id })

    @the_team_roster = matching_team_rosters.at(0)

    render({ :template => "team_rosters/show.html.erb" })
  end

  def create
    the_team_roster = TeamRoster.new
    the_team_roster.fantasy_team_id = params.fetch("query_fantasy_team_id")
    the_team_roster.player_id = params.fetch("query_player_id")
    the_team_roster.add_date = params.fetch("query_add_date")
    the_team_roster.status = params.fetch("query_status")
    the_team_roster.drop_date = params.fetch("query_drop_date")

    if the_team_roster.valid?
      the_team_roster.save
      redirect_to("/team_rosters", { :notice => "Team roster created successfully." })
    else
      redirect_to("/team_rosters", { :notice => "Team roster failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_team_roster = TeamRoster.where({ :id => the_id }).at(0)

    the_team_roster.fantasy_team_id = params.fetch("query_fantasy_team_id")
    the_team_roster.player_id = params.fetch("query_player_id")
    the_team_roster.add_date = params.fetch("query_add_date")
    the_team_roster.status = params.fetch("query_status")
    the_team_roster.drop_date = params.fetch("query_drop_date")

    if the_team_roster.valid?
      the_team_roster.save
      redirect_to("/team_rosters/#{the_team_roster.id}", { :notice => "Team roster updated successfully."} )
    else
      redirect_to("/team_rosters/#{the_team_roster.id}", { :alert => "Team roster failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_team_roster = TeamRoster.where({ :id => the_id }).at(0)

    the_team_roster.destroy

    redirect_to("/team_rosters", { :notice => "Team roster deleted successfully."} )
  end
end
