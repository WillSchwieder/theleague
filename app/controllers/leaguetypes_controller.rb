class LeaguetypesController < ApplicationController
  def index
    matching_leaguetypes = Leaguetype.all

    @list_of_leaguetypes = matching_leaguetypes.order({ :created_at => :desc })

    render({ :template => "leaguetypes/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_leaguetypes = Leaguetype.where({ :id => the_id })

    @the_leaguetype = matching_leaguetypes.at(0)

    render({ :template => "leaguetypes/show.html.erb" })
  end

  def create
    the_leaguetype = Leaguetype.new
    the_leaguetype.league_type = params.fetch("query_league_type")

    if the_leaguetype.valid?
      the_leaguetype.save
      redirect_to("/leaguetypes", { :notice => "Leaguetype created successfully." })
    else
      redirect_to("/leaguetypes", { :notice => "Leaguetype failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_leaguetype = Leaguetype.where({ :id => the_id }).at(0)

    the_leaguetype.league_type = params.fetch("query_league_type")

    if the_leaguetype.valid?
      the_leaguetype.save
      redirect_to("/leaguetypes/#{the_leaguetype.id}", { :notice => "Leaguetype updated successfully."} )
    else
      redirect_to("/leaguetypes/#{the_leaguetype.id}", { :alert => "Leaguetype failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_leaguetype = Leaguetype.where({ :id => the_id }).at(0)

    the_leaguetype.destroy

    redirect_to("/leaguetypes", { :notice => "Leaguetype deleted successfully."} )
  end
end
