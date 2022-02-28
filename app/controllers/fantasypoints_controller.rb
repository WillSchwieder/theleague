class FantasypointsController < ApplicationController
  def index
    matching_fantasypoints = Fantasypoint.all

    @list_of_fantasypoints = matching_fantasypoints.order({ :created_at => :desc })

    render({ :template => "fantasypoints/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_fantasypoints = Fantasypoint.where({ :id => the_id })

    @the_fantasypoint = matching_fantasypoints.at(0)

    render({ :template => "fantasypoints/show.html.erb" })
  end

  def create
    the_fantasypoint = Fantasypoint.new
    the_fantasypoint.passing_yrd = params.fetch("query_passing_yrd")
    the_fantasypoint.passing_td = params.fetch("query_passing_td")
    the_fantasypoint.int = params.fetch("query_int")
    the_fantasypoint.passing_att = params.fetch("query_passing_att")
    the_fantasypoint.comp = params.fetch("query_comp")
    the_fantasypoint.rushing_att = params.fetch("query_rushing_att")
    the_fantasypoint.rushing_yrd = params.fetch("query_rushing_yrd")
    the_fantasypoint.rushing_td = params.fetch("query_rushing_td")
    the_fantasypoint.rec = params.fetch("query_rec")
    the_fantasypoint.targets = params.fetch("query_targets")
    the_fantasypoint.receiving_yrds = params.fetch("query_receiving_yrds")
    the_fantasypoint.fumble = params.fetch("query_fumble")
    the_fantasypoint.ppr_fantasy_points = params.fetch("query_ppr_fantasy_points")
    the_fantasypoint.standard_fantasy_pts = params.fetch("query_standard_fantasy_pts")
    the_fantasypoint.half_ppr_fantasy_pts = params.fetch("query_half_ppr_fantasy_pts")
    the_fantasypoint.player_id = params.fetch("query_player_id")
    the_fantasypoint.team_id = params.fetch("query_team_id")
    the_fantasypoint.game_id = params.fetch("query_game_id")

    if the_fantasypoint.valid?
      the_fantasypoint.save
      redirect_to("/fantasypoints", { :notice => "Fantasypoint created successfully." })
    else
      redirect_to("/fantasypoints", { :notice => "Fantasypoint failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_fantasypoint = Fantasypoint.where({ :id => the_id }).at(0)

    the_fantasypoint.passing_yrd = params.fetch("query_passing_yrd")
    the_fantasypoint.passing_td = params.fetch("query_passing_td")
    the_fantasypoint.int = params.fetch("query_int")
    the_fantasypoint.passing_att = params.fetch("query_passing_att")
    the_fantasypoint.comp = params.fetch("query_comp")
    the_fantasypoint.rushing_att = params.fetch("query_rushing_att")
    the_fantasypoint.rushing_yrd = params.fetch("query_rushing_yrd")
    the_fantasypoint.rushing_td = params.fetch("query_rushing_td")
    the_fantasypoint.rec = params.fetch("query_rec")
    the_fantasypoint.targets = params.fetch("query_targets")
    the_fantasypoint.receiving_yrds = params.fetch("query_receiving_yrds")
    the_fantasypoint.fumble = params.fetch("query_fumble")
    the_fantasypoint.ppr_fantasy_points = params.fetch("query_ppr_fantasy_points")
    the_fantasypoint.standard_fantasy_pts = params.fetch("query_standard_fantasy_pts")
    the_fantasypoint.half_ppr_fantasy_pts = params.fetch("query_half_ppr_fantasy_pts")
    the_fantasypoint.player_id = params.fetch("query_player_id")
    the_fantasypoint.team_id = params.fetch("query_team_id")
    the_fantasypoint.game_id = params.fetch("query_game_id")

    if the_fantasypoint.valid?
      the_fantasypoint.save
      redirect_to("/fantasypoints/#{the_fantasypoint.id}", { :notice => "Fantasypoint updated successfully."} )
    else
      redirect_to("/fantasypoints/#{the_fantasypoint.id}", { :alert => "Fantasypoint failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_fantasypoint = Fantasypoint.where({ :id => the_id }).at(0)

    the_fantasypoint.destroy

    redirect_to("/fantasypoints", { :notice => "Fantasypoint deleted successfully."} )
  end
end
