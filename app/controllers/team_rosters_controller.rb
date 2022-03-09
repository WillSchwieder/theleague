class TeamRostersController < ApplicationController
  def draft
    render({ :template => "team_rosters/draft.html.erb" })
  end

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
    fantasy_team_id = params.fetch("query_team_id")
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
    qb.fantasy_team_id = fantasy_team_id
    qb.player_id = params.fetch("query_qb_id")
    qb.fantasy_position = "QB"
    qb.add_date = add_date
    qb.status = "Active"

    rb1 = TeamRoster.new
    rb1.player_id = rb1_id
    rb1.fantasy_team_id = fantasy_team_id
    rb1.fantasy_position = "RB1"
    rb1.add_date = add_date
    rb1.status = "Active"
    rb1.save

    rb2 = TeamRoster.new
    rb2.player_id = rb2_id
    rb2.fantasy_team_id = fantasy_team_id
    rb2.fantasy_position = "RB2"
    rb2.add_date = add_date
    rb2.status = "Active"
    rb2.save

    wr1 = TeamRoster.new
    wr1.player_id = wr1_id
    wr1.fantasy_team_id = fantasy_team_id
    wr1.fantasy_position = "WR1"
    wr1.add_date = add_date
    wr1.status = "Active"
    wr1.save

    wr2 = TeamRoster.new
    wr2.player_id = wr2_id
    wr2.fantasy_team_id = fantasy_team_id
    wr2.fantasy_position = "WR2"
    wr2.add_date = add_date
    wr2.status = "Active"
    wr2.save

    flex = TeamRoster.new
    flex.player_id = flex_id
    flex.fantasy_team_id = fantasy_team_id
    flex.fantasy_position = "FLEX"
    flex.add_date = add_date
    flex.status = "Active"
    flex.save

    k = TeamRoster.new
    k.player_id = k_id
    k.fantasy_team_id = fantasy_team_id
    k.fantasy_position = "K"
    k.add_date = add_date
    k.status = "Active"
    k.save

    defense = TeamRoster.new
    defense.player_id = defense_id
    defense.fantasy_team_id = fantasy_team_id
    defense.fantasy_position = "DEF"
    defense.add_date = add_date
    defense.status = "Active"
    defense.save

    if qb.valid?
      qb.save
      redirect_to("/fantasy_teams", { :notice => "Team roster created successfully." })
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
      redirect_to("/team_rosters/#{the_team_roster.id}", { :notice => "Team roster updated successfully." })
    else
      redirect_to("/team_rosters/#{the_team_roster.id}", { :alert => "Team roster failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_team_roster = TeamRoster.where({ :id => the_id }).at(0)

    the_team_roster.destroy

    redirect_to("/team_rostersb", { :notice => "Team roster deleted successfully." })
  end
end
