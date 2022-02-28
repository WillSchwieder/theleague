class LeagueSchedulesController < ApplicationController
  def index
    matching_league_schedules = LeagueSchedule.all

    @list_of_league_schedules = matching_league_schedules.order({ :created_at => :desc })

    render({ :template => "league_schedules/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_league_schedules = LeagueSchedule.where({ :id => the_id })

    @the_league_schedule = matching_league_schedules.at(0)

    render({ :template => "league_schedules/show.html.erb" })
  end

  def create
    the_league_schedule = LeagueSchedule.new
    the_league_schedule.home_fantasy_team_id = params.fetch("query_home_fantasy_team_id")
    the_league_schedule.away_fantasy_team_id = params.fetch("query_away_fantasy_team_id")
    the_league_schedule.week = params.fetch("query_week")

    if the_league_schedule.valid?
      the_league_schedule.save
      redirect_to("/league_schedules", { :notice => "League schedule created successfully." })
    else
      redirect_to("/league_schedules", { :notice => "League schedule failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_league_schedule = LeagueSchedule.where({ :id => the_id }).at(0)

    the_league_schedule.home_fantasy_team_id = params.fetch("query_home_fantasy_team_id")
    the_league_schedule.away_fantasy_team_id = params.fetch("query_away_fantasy_team_id")
    the_league_schedule.week = params.fetch("query_week")

    if the_league_schedule.valid?
      the_league_schedule.save
      redirect_to("/league_schedules/#{the_league_schedule.id}", { :notice => "League schedule updated successfully."} )
    else
      redirect_to("/league_schedules/#{the_league_schedule.id}", { :alert => "League schedule failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_league_schedule = LeagueSchedule.where({ :id => the_id }).at(0)

    the_league_schedule.destroy

    redirect_to("/league_schedules", { :notice => "League schedule deleted successfully."} )
  end
end
