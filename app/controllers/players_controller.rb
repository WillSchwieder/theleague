class PlayersController < ApplicationController
  def index
    matching_players = Player.all

    @list_of_players = matching_players.order({ :created_at => :desc })

    render({ :template => "players/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_players = Player.where({ :id => the_id })

    @the_player = matching_players.at(0)

    render({ :template => "players/show.html.erb" })
  end

  def create
    the_player = Player.new
    the_player.firstname = params.fetch("query_firstname")
    the_player.lastname = params.fetch("query_lastname")
    the_player.positionid = params.fetch("query_positionid")
    the_player.playerhash = params.fetch("query_playerhash")

    if the_player.valid?
      the_player.save
      redirect_to("/players", { :notice => "Player created successfully." })
    else
      redirect_to("/players", { :notice => "Player failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_player = Player.where({ :id => the_id }).at(0)

    the_player.firstname = params.fetch("query_firstname")
    the_player.lastname = params.fetch("query_lastname")
    the_player.positionid = params.fetch("query_positionid")
    the_player.playerhash = params.fetch("query_playerhash")

    if the_player.valid?
      the_player.save
      redirect_to("/players/#{the_player.id}", { :notice => "Player updated successfully." })
    else
      redirect_to("/players/#{the_player.id}", { :alert => "Player failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_player = Player.where({ :id => the_id }).at(0)

    the_player.destroy

    redirect_to("/players", { :notice => "Player deleted successfully." })
  end

  def draft_team
    u_id = session.fetch(:user_id)
    league_id = params.fetch("query_league_id")
    fantasy_team_id = params.fetch("query_team_id")
    add_date = DateTime.now()
    qb_id = params.fetch("query_qb_id")
    rb1_id = params.fetch("query_rb1_id")
    rb2_id = params.fetch("query_rb2_id")
    wr1_id = params.fetch("query_wr1_id")
    wr2_id = params.fetch("query_wr2_id")
    flex_id = params.fetch("query_flex_id")
    k_id = params.fetch("query_k_id")
    defense_id = params.fetch("query_def_id")

    qb = TeamRoster.new
    qb.id = 1
    qb.player_id = qb_id
    qb.fantasy_team_id = fantasy_team_id
    qb.fantasy_position = "QB"
    qb.created_at = add_date
    qb.updated_at = add_date
    qb.add_date = add_date.to_s
    qb.status = "Active"
    qb.save

    # rb1 = TeamRoster.new
    # rb1.player_id = rb1_id
    # rb1.fantasy_team_id = fantasy_team_id
    # rb1.fantasy_position = "RB1"
    # rb1.add_date = add_date
    # rb1.status = "Active"
    # rb1.save

    # rb2 = TeamRoster.new
    # rb2.player_id = rb2_id
    # rb2.fantasy_team_id = fantasy_team_id
    # rb2.fantasy_position = "RB2"
    # rb2.add_date = add_date
    # rb2.status = "Active"
    # rb2.save

    # wr1 = TeamRoster.new
    # wr1.player_id = wr1_id
    # wr1.fantasy_team_id = fantasy_team_id
    # wr1.fantasy_position = "WR1"
    # wr1.add_date = add_date
    # wr1.status = "Active"
    # wr1.save

    # wr2 = TeamRoster.new
    # wr2.player_id = wr2_id
    # wr2.fantasy_team_id = fantasy_team_id
    # wr2.fantasy_position = "WR2"
    # wr2.add_date = add_date
    # wr2.status = "Active"
    # wr2.save

    # flex = TeamRoster.new
    # flex.player_id = flex_id
    # flex.fantasy_team_id = fantasy_team_id
    # flex.fantasy_position = "FLEX"
    # flex.add_date = add_date
    # flex.status = "Active"
    # flex.save

    # k = TeamRoster.new
    # k.player_id = k_id
    # k.fantasy_team_id = fantasy_team_id
    # k.fantasy_position = "K"
    # k.add_date = add_date
    # k.status = "Active"
    # k.save

    # defense = TeamRoster.new
    # defense.player_id = defense_id
    # defense.fantasy_team_id = fantasy_team_id
    # defense.fantasy_position = "K"
    # defense.add_date = add_date
    # defense.status = "Active"
    # defense.save

    if qb.valid?
      qb.save
      redirect_to("/draft", { :notice => "it worked!" })
    else
      redirect_to("/draft", { :notice => qb })
    end
  end
end
