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
      redirect_to("/players/#{the_player.id}", { :notice => "Player updated successfully."} )
    else
      redirect_to("/players/#{the_player.id}", { :alert => "Player failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_player = Player.where({ :id => the_id }).at(0)

    the_player.destroy

    redirect_to("/players", { :notice => "Player deleted successfully."} )
  end
end
