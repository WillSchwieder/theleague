Rails.application.routes.draw do
  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  get("/", { :controller => "application", :action => "homepage" })

  #------------------------------
  get("/rules", { :controller => "application", :action => "rules" })
  # Routes for the League schedule resource:

  # CREATE
  post("/insert_league_schedule", { :controller => "league_schedules", :action => "create" })

  # READ
  get("/league_schedules", { :controller => "league_schedules", :action => "index" })

  get("/league_schedules/:path_id", { :controller => "league_schedules", :action => "show" })

  # UPDATE

  post("/modify_league_schedule/:path_id", { :controller => "league_schedules", :action => "update" })

  # DELETE
  get("/delete_league_schedule/:path_id", { :controller => "league_schedules", :action => "destroy" })

  #------------------------------

  # Routes for the Team roster resource:

  # CREATE
  post("/insert_team_roster", { :controller => "team_rosters", :action => "create" })

  # READ
  get("/team_rosters", { :controller => "team_rosters", :action => "index" })

  get("/team_rosters/:path_id", { :controller => "team_rosters", :action => "show" })

  # UPDATE

  post("/modify_team_roster/:path_id", { :controller => "team_rosters", :action => "update" })

  # DELETE
  get("/delete_team_roster/:path_id", { :controller => "team_rosters", :action => "destroy" })

  #------------------------------

  # Routes for the Team type resource:

  # CREATE
  post("/insert_team_type", { :controller => "team_types", :action => "create" })

  # READ
  get("/team_types", { :controller => "team_types", :action => "index" })

  get("/team_types/:path_id", { :controller => "team_types", :action => "show" })

  # UPDATE

  post("/modify_team_type/:path_id", { :controller => "team_types", :action => "update" })

  # DELETE
  get("/delete_team_type/:path_id", { :controller => "team_types", :action => "destroy" })

  #------------------------------

  # Routes for the Leaguetype resource:

  # CREATE
  post("/insert_leaguetype", { :controller => "leaguetypes", :action => "create" })

  # READ
  get("/leaguetypes", { :controller => "leaguetypes", :action => "index" })

  get("/leaguetypes/:path_id", { :controller => "leaguetypes", :action => "show" })

  # UPDATE

  post("/modify_leaguetype/:path_id", { :controller => "leaguetypes", :action => "update" })

  # DELETE
  get("/delete_leaguetype/:path_id", { :controller => "leaguetypes", :action => "destroy" })

  #------------------------------

  # Routes for the League resource:

  # CREATE
  post("/insert_league", { :controller => "leagues", :action => "create" })

  # READ
  get("/leagues", { :controller => "leagues", :action => "index" })

  get("/leagues/:path_id", { :controller => "leagues", :action => "show" })

  # UPDATE

  post("/modify_league/:path_id", { :controller => "leagues", :action => "update" })

  # DELETE
  get("/delete_league/:path_id", { :controller => "leagues", :action => "destroy" })

  #------------------------------

  # Routes for the Fantasy team resource:

  # CREATE
  post("/insert_fantasy_team", { :controller => "fantasy_teams", :action => "create" })

  # READ
  get("/fantasy_teams", { :controller => "fantasy_teams", :action => "index" })

  get("/fantasy_teams/:path_id", { :controller => "fantasy_teams", :action => "show" })

  # UPDATE

  post("/modify_fantasy_team/:path_id", { :controller => "fantasy_teams", :action => "update" })

  # DELETE
  get("/delete_fantasy_team/:path_id", { :controller => "fantasy_teams", :action => "destroy" })

  #------------------------------

  # Routes for the Game resource:

  # CREATE
  post("/insert_game", { :controller => "games", :action => "create" })

  # READ
  get("/games", { :controller => "games", :action => "index" })

  get("/games/:path_id", { :controller => "games", :action => "show" })

  # UPDATE

  post("/modify_game/:path_id", { :controller => "games", :action => "update" })

  # DELETE
  get("/delete_game/:path_id", { :controller => "games", :action => "destroy" })

  #------------------------------

  # Routes for the Fantasypoint resource:

  # CREATE
  post("/insert_fantasypoint", { :controller => "fantasypoints", :action => "create" })

  # READ
  get("/fantasypoints", { :controller => "fantasypoints", :action => "index" })

  get("/fantasypoints/:path_id", { :controller => "fantasypoints", :action => "show" })

  # UPDATE

  post("/modify_fantasypoint/:path_id", { :controller => "fantasypoints", :action => "update" })

  # DELETE
  get("/delete_fantasypoint/:path_id", { :controller => "fantasypoints", :action => "destroy" })

  #------------------------------

  # Routes for the Team resource:

  # CREATE
  post("/insert_team", { :controller => "teams", :action => "create" })

  # READ
  get("/teams", { :controller => "teams", :action => "index" })

  get("/teams/:path_id", { :controller => "teams", :action => "show" })

  # UPDATE

  post("/modify_team/:path_id", { :controller => "teams", :action => "update" })

  # DELETE
  get("/delete_team/:path_id", { :controller => "teams", :action => "destroy" })

  #------------------------------

  # Routes for the Player resource:

  # CREATE
  post("/insert_player", { :controller => "players", :action => "create" })

  # READ
  get("/players", { :controller => "players", :action => "index" })

  get("/players/:path_id", { :controller => "players", :action => "show" })

  # UPDATE

  post("/modify_player/:path_id", { :controller => "players", :action => "update" })

  # DELETE
  get("/delete_player/:path_id", { :controller => "players", :action => "destroy" })

  #------------------------------
  
  # Site Navigation:

  # User Profile
  get("/u/:user_id", { :controller => "users", :action => "user_profile" })

  get("/l", { :controller => "leagues", :action => "index" })

  # Join a league
  get("/join_fantasy_team", { :controller => "fantasy_teams", :action => "join_fantasy_team" })
end
