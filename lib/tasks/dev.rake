desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment }) do

  ## User Account Generation
  # 25.times do
  #   user = User.new
  #   user.username = Faker::Name.first_name
  #   user.email = Faker::Name.first_name + "@email.com"
  #   user.password = "password"
  #   user.save
  # end

  ## League

  # 25.times do
  #   league = League.new
  #   league.name = Faker::University.name
  #   league.year = 2022
  #   league.league_type_id = rand(1..3)
  #   league.save
  # end

  ## Players
  # 200.times do
  #   player = Player.new
  #   player.firstname = Faker::Name.male_first_name
  #   player.lastname = Faker::Name.last_name
  #   player.team_id = rand(1..32)
  #   player.playerhash = player.firstname + player.lastname + player.team_id.to_s
  #   player.positionid = rand(1..6)
  #   player.position_id = player.positionid
  #   player.save
  # end

  ## Teams
  # 30.times do
  # team = Team.new
  # team.name = Faker::Sports::Football.team
  # team.mascot = Faker::Creature::Animal.name
  # team.name_abbr = team.name[0..2]
  # team.save

  # end


end
