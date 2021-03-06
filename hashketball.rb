require 'pry'

def game_hash
  {
     :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => {
         "Alan Anderson" => {
           :number => 0,
           :shoe => 16,
           :points => 22,
           :rebounds => 12,
           :assists => 12,
           :steals => 3,
           :blocks => 1,
           :slam_dunks => 1
         },
         "Reggie Evans" => {
           :number => 30,
           :shoe => 14,
           :points => 12,
           :rebounds => 12,
           :assists => 12,
           :steals => 12,
           :blocks => 12,
           :slam_dunks => 7
         },
         "Brook Lopez" => {
           :number => 11,
           :shoe => 17,
           :points => 17,
           :rebounds => 19,
           :assists => 10,
           :steals => 3,
           :blocks => 1,
           :slam_dunks => 15
         },
         "Mason Plumlee" => {
           :number => 1,
           :shoe => 19,
           :points => 26,
           :rebounds => 12,
           :assists => 6,
           :steals => 3,
           :blocks => 8,
           :slam_dunks => 5
         },
         "Jason Terry" => {
           :number => 31,
           :shoe => 15,
           :points => 19,
           :rebounds => 2,
           :assists => 2,
           :steals => 4,
           :blocks => 11,
           :slam_dunks => 1
         }
       }
     },
     :away => {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise", "Purple"],
       :players => {
         "Jeff Adrien" => {
           :number => 4,
           :shoe => 18,
           :points => 10,
           :rebounds => 1,
           :assists => 1,
           :steals => 2,
           :blocks => 7,
           :slam_dunks => 2
         },
         "Bismak Biyombo" => {
           :number => 0,
           :shoe => 16,
           :points => 12,
           :rebounds => 4,
           :assists => 7,
           :steals => 7,
           :blocks => 15,
           :slam_dunks => 10
         },
         "DeSagna Diop" => {
           :number => 2,
           :shoe => 14,
           :points => 24,
           :rebounds => 12,
           :assists => 12,
           :steals => 4,
           :blocks => 5,
           :slam_dunks => 5
         },
         "Ben Gordon" => {
           :number => 8,
           :shoe => 15,
           :points => 33,
           :rebounds => 3,
           :assists => 2,
           :steals => 1,
           :blocks => 1,
           :slam_dunks => 0
         },
         "Brendan Haywood" => {
           :number => 33,
           :shoe => 15,
           :points => 6,
           :rebounds => 12,
           :assists => 12,
           :steals => 22,
           :blocks => 5,
           :slam_dunks => 12
         }
       }
     }
   }
 end

# iterate over each team and if player_name = the given argument.... return the points
# returning the score per player
 def num_points_scored(player_name)
   this_player = player_name
     game_hash.each do |team, team_data|
       team_data[:players].each do |player_name, player_data|
            if player_name == this_player
              return player_data[:points]
              #over thought it, got stuck too long.
        end
     end
     end
  end

# returning the shoe size for each_player
def shoe_size(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |this_player, player_data|
         if player_name == this_player
           return player_data[:shoe]
     end
  end
  end
end

def team_colors(team_name)
  game_hash.each do |team, team_data|
   if team_data[:team_name] == team_name
     return team_data[:colors]
  end
end
end

def team_names #(game_hash) => optional
  rtnd_team_names = []
  game_hash.each do |team, team_data|
    rtnd_team_names += [team_data[:team_name]]
  end
  return rtnd_team_names
end


def player_numbers(team_name)
   jersey_numbers = []
   game_hash.each do |team, team_data|
     if team_data[:team_name] == team_name
     team_data[:players].each do |this_player, player_data|
       jersey_numbers += [player_data[:number]]
     end
    #iterate through each team
    #iterate through each place
    # collect their #s
   end
 end
   return jersey_numbers
end

def player_stats(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |this_player, player_data|
         if this_player == player_name
           return player_data
     end
  end
end
end


def big_shoe_rebounds
  largest_shoe_size = 0
  rebounds = 0
  game_hash.each do |team, team_data|
    #iterate through each player
  team_data[:players].each do |this_player, player_data|
      if player_data[:shoe] > largest_shoe_size
        rebounds = player_data[:rebounds]
        largest_shoe_size = player_data[:shoe]
    end
  end
end
# binding.pry
return rebounds
end
