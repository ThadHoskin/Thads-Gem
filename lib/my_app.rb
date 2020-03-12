require_relative "my_app/version"
`bundle install` #bundle install gems
require "csv" 
require "artii"
require "colorize"
require "rubocop"
require "terminal-table"
#use map to iterate through the csv my_app_csv_file

def print_player_detail(player_data, index)
 puts "#{player_data[index]["Player"]} scored #{player_data[index]["Points"]} points, while collecting #{player_data[index]["Rebounds"]} rebounds and dishing out #{player_data[index]["Assists"]} assists. He did this all while playing in #{player_data[index]["Games Played"]} games."
end

def start_basketball_app
  file = File.read("../my_app_csv_file.csv")
  csv = CSV.parse(file, :headers => true)
  player_data = csv.map do |row| 
    row.to_hash 
  end
  return player_data
end

  def user_input_full_data  # this is to add to the csv file, and the options menu, then delete again. 
    ["2018-2019",USER_NAME, points_input, rebounds_input, assists_input, games_played]
  end

  # def add_to_csv #adding data to csv
  #   user_input_full_data = CSV.parse(<<~ROWS, headers: true)
  #   Year,Player,Points,Rebounds,Assists,Games Played
  #   2018-2019,USER_NAME,points_input,rebounds_input,assists_input,games_played_input
  # ROWS
  # end


# CSV.open("../my_app_csv_file", "a") do |csv|
# csv << user_input_full_data     
# end

def stats_getter(statement)
  puts statement
end

def try_again(statement)
  puts statement
end

def player_description(statement)
  puts statement 
end

def player_praise(statement)
  puts statement
end
  # p player_data[0]["Assists"]

def user_input_data(datatype)

  puts "How many #{datatype} do you think you would get?".colorize(:yellow)
  input = gets.chomp.to_i
  if datatype == "points"
    comparison_datatype = 30
  else
    comparison_datatype = 12
  end 
  if input == 0 || input > comparison_datatype
    puts "Lets try that again, #{USER_NAME}!".colorize(:red)
    input = user_input_data(datatype)
  elsif input > 0 || input < comparison_datatype
    puts "Ohhh , feeling lucky !"
  else 
    puts "Nice! Some truth to it! "
  end
  return input
end

art = Artii::Base.new
puts art.asciify "Basketball"
puts "Hey there, whats your name ?".colorize(:yellow)
USER_NAME = gets.chomp
puts "Lets play some basketball #{USER_NAME}!!! "
puts "-" * 45
sleep(2)
puts "Who is your favorite basketball player out of the following?".colorize(:yellow)
puts "-" * 45
sleep(2)

def table_maker
rows = []
  rows << ["Kevin Durant", 1]
  rows << ["Giannis Antetokounmpo", 2]
  rows << ["Lebron James", 3]
  rows << ["James Harden", 4]
  rows << ["Russell Westbrook", 5]
  table = Terminal::Table.new :rows => rows
  return table
end

valid_input = false
until valid_input 
table = table_maker
puts table

  # puts "1. Kevin Durant"
  # puts "2. Giannis Antetokounmpo"
  # puts "3. Lebron James"
  # puts "4. James Harden"
  # puts "5. Russell Westbrook"

  puts "-" *45

  user_input = gets.chomp.to_i
  puts "-" *45
  puts "\n"
  player_data = start_basketball_app

  case user_input 
  when 1
  valid_input = true
    player_description("You chose Kevin Durant! Reigning finals MVP, Nice work.")
      sleep(2)
    stats_getter("Let me get those stats for you...")
      puts "\n"
      sleep(2)
    print_player_detail(player_data, user_input - 1)
    # puts "Ahhh, wow !! He's had a good 2018-2019 season, yet again !"
  when 2
  valid_input = true
    player_description("You chose Giannis Antetokounmpo, the Greek Freak! Lets go Bucks") 
      sleep(2)
    stats_getter("Let me get those stats for you...")
      sleep(2)
    #pull Giannis stats
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    player_praise("He has been incredible, I'd reckon hes got the MVP , wouldn't you !")
  when  3
  valid_input = true
    player_description("You chose Lebron James, The Chosen One, The King ! Good stuff.")
      sleep(2)
    # puts "Can never go wrong with The King! "
    stats_getter("Let me get those stats for you...")
      sleep(2)
    #pull lebron stats
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    
  when  4
  valid_input = true
    player_description("You chose James Harden, the Beard, the reigning MVP ! Lets get some fouls ;)")
    sleep(2)
    # puts "Well, you know you're going to get those stats when you choose The Beard, don't ya !"
    stats_getter("Let me get those stats for you...")
    #harden stats
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    # puts "Well, he may have not got another MVP , but cant say he wasn't close can we ?"
  when  5
  valid_input = true
    player_description("You chose Russell Westbrook, the walking triple double ! Thunder Up Baby !!")
    sleep(2)
    puts  "Ohhhh, you've chosen the Brody, that's the one, lets see if he can get another one of those triple doubles eh ! "
    sleep(2)
    stats_getter("Let me get those stats for you...")
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    player_praise("WOW !! Another triple double season, he's one of a kind isn't he !")

  else # user_input != 1 || user_input != 2 || user_input != 3 || user_input != 4 || user_input != 5
    puts "Error : choose a number between 1 and 5 please! Lets try that again"
    # start_basketball_app 
  end
end


  puts "-" *45
  puts "Press enter to continue"
  puts gets.chomp
    sleep(2)

  # #need to have to go back to the start if the wrong input was used.

  puts "I can assume that you yourself like basketball, lets see where you'd fit in with these guys..."

  sleep(2)
  puts "\n"
  points_input = user_input_data("points")
  sleep(2)
  rebounds_input = user_input_data("rebounds")
  sleep(2)
  assists_input = user_input_data("assists")
  sleep(2)
  puts "\n"
  puts "Lastly, i suppose we better check how durable you're going to be. Out of 82 games, how many do you think you'd be able to play in?".colorize(:yellow)
  games_played = gets.chomp.to_i
  if games_played == 0 || games_played > 82
  try_again("Lets try that again, #{USER_NAME}!".colorize(:red))  #back to start of loop please
  elsif games_played > 65 && games_played < 83
    puts "I think that would be a very good effort #{USER_NAME}"
  else
    puts "I think any number of games played is a good effort!!"
  end
  puts "\n"
  sleep(2)
  puts "For a newbie in the NBA, you've done pretty well, you scored #{points_input} points, collected #{rebounds_input} rebounds, dished out #{assists_input} assists, and all through this managed to play a sturdy #{games_played} games against these giants ! Nice Work #{USER_NAME}"

  puts "heres you on the table".colorize(:yellow)

  table << [USER_NAME,6]

  puts table

  # now take you out of the array
  puts "Actually, sorry i think i preferred the table the way it was!".colorize(:red)
  sleep(2)
  table = table_maker
  puts table

# start app
start_basketball_app



#case statement
# puts " how many points?"
# points_tester = gets.chomp.to_i
# # if else statement 
# def get_user_input(points,rebounds, assists)
#   if points_tester > 30 && rebounds > 10 && assists > 10 
#       puts "Congratulations, you could be the MVP !!"
#     elsif points_tester < 30 && points_tester > 20 && rebounds > 10 && assists > 10
#       puts "On the way, having an MVP type season!"
#     elsif  points_tester > 10 && points_tester < 20 && rebounds > 10 && assists > 10
#       puts "Keep that hard work up!"
#     elsif points_tester == 0 || points_tester < 10 && rebounds > 10 && assists > 10
#       puts "Get that scoring up, and you could really make a splash in this league!"
#   end
#  end 

# get_user_input(10,12,12)




# end get_user_input(10,20,12)



#class option to make a player, turn into hash, use .map to iterate over the hash, use an if else statement to determine what level player you would be in the NBA ?


# class Player_rating
#   attr_writer :points, :rebounds, :assists
#   def initialize(points,rebounds,assists)
#     @points = points
#     @rebounds = rebounds
#     @assists = assists
#   end
#   def object_to_hash

#   end 
# end

# # def get_user_input


# USER_NAME = Player_rating.new(15,6,3)
# p USER_NAME


# USER_NAME_hash = USER_NAME.to_h

# p USER_NAME_hash

