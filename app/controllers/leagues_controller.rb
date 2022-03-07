class LeaguesController < ApplicationController
  def create_from_league_details
    # {"movie_id"=>"55", "current_user_id"=>"82"}

    b = FantasyTeam.new
    b.league_id = params.fetch("query_league_id")
    b.user_id = params.fetch("query_user_id")
    b.save

    redirect_to("/fantasy_teams", { :notice => "Fantasy  #{b.name}" })
  end
  
  def index
    matching_leagues = League.all

    @list_of_leagues = matching_leagues.order({ :created_at => :desc })

    render({ :template => "leagues/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_leagues = League.where({ :id => the_id })

    @the_league = matching_leagues.at(0)

    render({ :template => "leagues/show.html.erb" })
  end

  def create
    the_league = League.new
    the_league.name = params.fetch("query_name")
    the_league.year = params.fetch("query_year")
    the_league.league_type_id = params.fetch("query_league_type_id")

    if the_league.valid?
      the_league.save
      redirect_to("/leagues", { :notice => "League created successfully." })
    else
      redirect_to("/leagues", { :notice => "League failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_league = League.where({ :id => the_id }).at(0)

    the_league.name = params.fetch("query_name")
    the_league.year = params.fetch("query_year")
    the_league.league_type_id = params.fetch("query_league_type_id")

    if the_league.valid?
      the_league.save
      redirect_to("/leagues/#{the_league.id}", { :notice => "League updated successfully."} )
    else
      redirect_to("/leagues/#{the_league.id}", { :alert => "League failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_league = League.where({ :id => the_id }).at(0)

    the_league.destroy

    redirect_to("/leagues", { :notice => "League deleted successfully."} )
  end

  def leagues_view
    render({ :template => "leagues/index.html.erb" })
  end
end
