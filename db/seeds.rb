# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Game.create!([
               {
                 title: 'Apex Legends',
                 description:
                 %(
        Apex legends is a high-octane, free-to-play battle royale game that pits squads of three players against each other in a vibrant, futuristic world. Developed by Respawn Entertainment, the game features a diverse cast of legends, each with unique abilities, as they battle for supremacy in the ever-shrinking play zone. With innovative communication tools like the Ping System, intense gunplay, and constantly evolving landscapes, Apex Legends offers an exhilarating and strategic gaming experience that keeps players on the edge of their seats. Dive into the action, choose your legend, and fight your way to become the last squad standing in this fast-paced and dynamic battle royale.
      ).squish,
                 released_on: '2019-04-26',
                 rating: 'PG-13',
                 total_gross: 1_223_641_414,
                 director: 'Steve Ferreira',
                 play_time: '181 min',
               },
               {
                 title: 'Rocket League',
                 description:
                 %(
        Rocket league is a unique and adrenaline-fueled sports video game that combines soccer with rocket-powered cars. Developed by Psyonix, this fast-paced multiplayer title pits two teams of customizable rocket cars against each other in a futuristic arena. Players use their acrobatic vehicles to skillfully maneuver a giant ball into the opposing team's goal. With easy-to-learn controls and a high skill ceiling, "Rocket League" offers a thrilling mix of soccer strategy and vehicular acrobatics. Whether you're a casual gamer or a competitive enthusiast, prepare for high-flying goals, epic saves, and non-stop action in this innovative and wildly entertaining take on the traditional sports genre.
      ).squish,
                 released_on: '2019-03-08',
                 rating: 'PG-13',
                 total_gross: 1_110_662_849,
                 director: 'Thomas Silloway',
                 play_time: '124 min',
               },
               {
                 title: 'Fifa 2023',
                 description:
                 %(
        FIFA 2023, the latest installment in the iconic football simulation series by EA Sports, delivers an unparalleled virtual football experience. Immerse yourself in the breathtaking realism of the game, featuring updated player rosters, meticulously recreated stadiums, and enhanced gameplay mechanics.
      ).squish,
                 released_on: '2018-02-16',
                 rating: 'PG-13',
                 total_gross: 1_346_913_161,
                 director: 'Andrew Wilson',
                 play_time: '134 min',
               },
               {
                 title: 'Fortnite',
                 description:
                 %(
        Fortnite, developed by Epic Games, is a revolutionary battle royale game that has taken the gaming world by storm. In this fast-paced and visually striking title, players are dropped onto a vibrant island where they must fight to be the last one standing. What sets Fortnite apart is its unique building mechanic that allows players to construct structures on-the-fly, adding a strategic layer to the intense gunfights.
      ).squish,
                 released_on: '2018-04-27',
                 rating: 'PG-13',
                 total_gross: 2_048_359_754,
                 director: 'Charlie Wen',
                 play_time: '149 min',
               },
               {
                 title: 'Forza Horizon 5',
                 description:
                 %(
        Forza Horizon 5 is the latest installment in the critically acclaimed racing game series. Developed by Playground Games, this open-world racing experience is set in the breathtaking landscapes of Mexico. Boasting stunning graphics, a vast and diverse environment, and a dynamic weather system, Forza Horizon 5 delivers an immersive and exhilarating racing adventure. Whether you're a casual racer or a die-hard car enthusiast, buckle up for a thrilling journey through stunning locales, showcase your driving skills, and customize your dream car collection in this ultimate celebration of automotive culture.
      ).squish,
                 released_on: '2011-06-17',
                 rating: 'PG-13',
                 total_gross: 219_851_172,
                 director: 'Mike Brown',
                 play_time: '114 min',
               },
               {
                 title: 'Valorant',
                 description:
                 %{
        Valorant is a tactical first-person shooter (FPS) developed by Riot Games. Set in a near-future world, players engage in team-based matches, each controlling a unique character with special abilities. With precise gunplay, strategic teamwork, and diverse agent abilities, Valorant combines elements of traditional FPS with strategic elements, creating a competitive and dynamic gaming experience.
      }.squish,
                 released_on: '2015-08-07',
                 rating: 'PG-13',
                 total_gross: 168_257_860,
                 director: 'Joe Ziegler',
                 play_time: '100 min',
               },
               {
                 title: 'Grand Theft Auto',
                 description:
                 %{
        "Grand Theft Auto" (GTA) is an iconic open-world action-adventure video game series. Known for its sandbox gameplay, players navigate vast urban landscapes, engaging in missions, heists, and various criminal activities. Developed by Rockstar Games, GTA is celebrated for its immersive storytelling, diverse characters, and the freedom it offers players to explore and interact with a dynamic virtual world.
      }.squish,
                 released_on: '2008-05-02',
                 rating: 'PG-13',
                 total_gross: 585_366_247,
                 director: 'Andrew Semple ',
                 play_time: '126 min',
               },
               {
                 title: 'Terraria',
                 description:
                 %(
        Terraria is a sandbox adventure game that combines exploration, building, and combat. Developed by Re-Logic, players navigate a 2D pixel-art world, mining resources, crafting items, and battling creatures. With a focus on creativity and discovery, Terraria allows players to shape their own unique environments, encounter diverse biomes, and engage in cooperative or competitive multiplayer adventures.
      ).squish,
                 released_on: '1978-12-15',
                 rating: 'PG',
                 total_gross: 300_451_603,
                 director: 'Andrew "Redigit" Spinks',
                 play_time: '143 min',
               },
               {
                 title: 'Call of Duty: Warzone',
                 description:
                 %(

        Call of Duty: Warzone is a free-to-play battle royale game developed by Infinity Ward and Raven Software. Set in the fictional city of Verdansk, it combines elements of the iconic Call of Duty series with the battle royale genre. Players drop into a massive map, scavenging for weapons and gear, engaging in intense firefights, and striving to be the last team or player standing in a shrinking play zone. Known for its fast-paced action, realistic graphics, and constant updates, Warzone has become a popular and enduring title in the competitive gaming landscape.
      ).squish,
                 released_on: '2002-05-03',
                 rating: 'PG-13',
                 total_gross: 825_025_036,
                 director: 'Ken Turner',
                 play_time: '121 min',
               },
               {
                 title: 'League of legends',
                 description:
                 %{
        League of Legends (LoL) is a highly popular multiplayer online battle arena (MOBA) game developed by Riot Games. In this fast-paced strategy game, players select unique champions with distinct abilities and work together in teams to destroy the opposing team's Nexus, a core building located within their base. Known for its competitive gameplay, diverse champion roster, and strategic depth, League of Legends has become a cornerstone of the esports scene, attracting millions of players worldwide.
      }.squish,
                 released_on: '1989-06-23',
                 rating: 'PG-13',
                 total_gross: 411_348_924,
                 director: 'Jeremy Lee',
                 play_time: '126 min',
               },
               {
                 title: 'Among Us',
                 description:
                 %(
        Among Us is a multiplayer party game developed by InnerSloth. Set in a space-themed environment, players take on the roles of Crewmates aboard a spaceship. The catch: Impostors are among the Crewmates, attempting to eliminate them and take control. Crewmates must complete tasks while identifying and voting off the Impostors. With its simple yet engaging gameplay and emphasis on social deduction, Among Us has become a viral sensation, fostering teamwork and suspicion among players.
      ).squish,
                 released_on: '2004-07-23',
                 rating: 'PG-13',
                 total_gross: 82_102_379,
                 director: "Marcus Bromander",
                 play_time: '101 min',
               },
               {
                 title: 'Roblox',
                 description:
                 %(
        "Roblox" is a user-generated online gaming platform and game creation system that allows players to design, play, and share games created by other users. It features a diverse array of user-generated games across various genres, fostering creativity and collaboration. Players can customize their avatars, participate in virtual worlds, and even create their own games using the platform's intuitive game development tools. Roblox has gained immense popularity, especially among younger audiences, for its vast and dynamic gaming ecosystem.
      ).squish,
                 released_on: '2017-06-02',
                 rating: 'PG-13',
                 total_gross: 821_847_012,
                 director: 'David Baszucki',
                 play_time: '141 min',
               }
             ])
User.create!(name: "admin", email: "admin@fake.com", password: "password123", username: "admin", admin: true)
  Genre.create(name: "Action")
  Genre.create(name: "RPG")
  Genre.create(name: "FPS")
  Genre.create(name: "Horror")
  Genre.create(name: "Adventure")
  Genre.create(name: "Fighting")
  Genre.create(name: "Racing")
  Genre.create(name: "Puzzle")
  Genre.create(name: "Sports")
  Genre.create(name: "Simulation")

  [
  ["Apex Legends", "apex-legends.jpg"],
  ["Rocket League", "rocket-league.jpg"],
  ["Fifa 2023", "fifa.jpg"],
  ["Fortnite", "fortnite.png"],
  ["Forza Horizon 5", "forza-horizon.jpeg"],
  ["Valorant", "valorant.jpeg"],
  ["Grand Theft Auto", "gta.png"],
  ["Terraria", "terraria.jpg"],
  ["Call of Duty: Warzone", "warzone.jpeg"],
  ["League of legends", "league-of-legends.jpeg"],
  ["Among Us", "among-us.jpeg"],
  ["Roblox", "roblox.jpeg"]
].each do |game_title, file_name|
  game = Game.find_by!(title: game_title)
  file = File.open(Rails.root.join("app/assets/images/#{file_name}"))
  game.main_image.attach(io: file, filename: file_name)
end
