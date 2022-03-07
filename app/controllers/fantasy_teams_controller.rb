class FantasyTeamsController < ApplicationController
  def index
    matching_fantasy_teams = FantasyTeam.all

    @list_of_fantasy_teams = matching_fantasy_teams.order({ :created_at => :desc })

    render({ :template => "fantasy_teams/index.html.erb" })
  end

  def join_fantasy_team
    league_id = params.fetch("query_league_id")

    @matching_league = League.where({ :id => league_id }).at(0)

    

    render({ :template => "fantasy_teams/join_fantasy_team.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_fantasy_teams = FantasyTeam.where({ :id => the_id })

    @the_fantasy_team = matching_fantasy_teams.at(0)

    render({ :template => "fantasy_teams/show.html.erb" })
  end

  def create
    league_id = params.fetch("query_league_id")
    user_id = params.fetch("query_user_id")

    the_fantasy_team = FantasyTeam.new
    the_fantasy_team.name = params.fetch("query_name")
    the_fantasy_team.team_type_id = params.fetch("query_team_type_id")
    the_fantasy_team.league_id = league_id
    the_fantasy_team.user_id = user_id

    if the_fantasy_team.valid?
      the_fantasy_team.save
      redirect_to("/fantasy_teams", { :notice => "Fantasy team created successfully." })
    else
      redirect_to("/fantasy_teams", { :notice => "Fantasy team failed to create successfully." + the_fantasy_team.user_id.to_s})
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_fantasy_team = FantasyTeam.where({ :id => the_id }).at(0)

    the_fantasy_team.name = params.fetch("query_name")
    the_fantasy_team.team_type_id = params.fetch("query_team_type_id")
    the_fantasy_team.league_id = params.fetch("query_league_id")

    if the_fantasy_team.valid?
      the_fantasy_team.save
      redirect_to("/fantasy_teams/#{the_fantasy_team.id}", { :notice => "Fantasy team updated successfully."} )
    else
      redirect_to("/fantasy_teams/#{the_fantasy_team.id}", { :alert => "Fantasy team failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_fantasy_team = FantasyTeam.where({ :id => the_id }).at(0)

    the_fantasy_team.destroy

    redirect_to("/fantasy_teams", { :notice => "Fantasy team deleted successfully."} )
  end
end
