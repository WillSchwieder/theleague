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

  ## 
end


