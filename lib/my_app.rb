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
    ["2018-2019",user_name, points_input, rebounds_input, assists_input, games_played]
  end

  # def add_to_csv #adding data to csv
  #   user_input_full_data = CSV.parse(<<~ROWS, headers: true)
  #   Year,Player,Points,Rebounds,Assists,Games Played
  #   2018-2019,user_name,points_input,rebounds_input,assists_input,games_played_input
  # ROWS
  # end


# CSV.open("../my_app_csv_file", "a") do |csv|
# csv << user_input_full_data     
# end

def stats_getter(statement)
  puts statement
end


  # p player_data[0]["Assists"]


  art = Artii::Base.new
  puts art.asciify "Basketball"




  # puts "hello world"  

 

  # end

  
  puts "Hey there, whats your name ?".colorize(:yellow)
    user_name = gets.chomp
  puts "Lets play some basketball #{user_name}!!! "
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
    puts "You chose Kevin Durant! Reigning finals MVP, Nice work. "
      sleep(2)
    stats_getter("Let me get those stats for you...")
      puts "\n"
      sleep(2)
      print_player_detail(player_data, user_input - 1)
    # puts "Ahhh, wow !! He's had a good 2018-2019 season, yet again !"
  when 2
  valid_input = true
    puts "You chose Giannis Antetokounmpo, the Greek Freak ! Lets go Bucks ! "
      sleep(2)
    stats_getter("Let me get those stats for you...")
      sleep(2)
    #pull Giannis stats
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    puts "He has been incredible, I'd reckon hes got the MVP , wouldn't you !"
  when  3
  valid_input = true
    puts "You chose Lebron James, The Chosen One, The King ! Good stuff. "
      sleep(2)
    # puts "Can never go wrong with The King! "
    stats_getter("Let me get those stats for you...")
      sleep(2)
    #pull lebron stats
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    puts "Another great year from Lebron , 33 and still got it !!"
  when  4
  valid_input = true
    puts "You chose James Harden, the Beard, the reigning MVP ! Lets get some fouls ;)"
    sleep(2)
    # puts "Well, you know you're going to get those stats when you choose The Beard, don't ya !"
    stats_getter("Let me get those stats for you...")
    #harden stats
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    # puts "Well, he may have not got another MVP , but cant say he wasn't close can we ?"
  when  5
  valid_input = true
    puts "You chose Russell Westbrook, the walking triple double ! Thunder Up Baby !!"
      sleep(2)
    puts  "Ohhhh, you've chosen the Brody, that's the one, lets see if he can get another one of those triple doubles eh ! "
      sleep(2)
    stats_getter("Let me get those stats for you...")
    print_player_detail(player_data, user_input - 1)
    sleep(2)
    puts  "WOW !! Another triple double season, he's one of a kind isn't he !"

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
    
    puts "How many points do you think you would score against these guys ?".colorize(:yellow)
# def points_input_getter
    points_input = gets.chomp.to_i
      if points_input == 0 || points_input > 30
        puts "Lets try that again #{user_name}!".colorize(:red) 
       #how do i return to the start of the loop?
      elsif points_input > 0 || points_input < 30
        puts "Ohhh , feeling lucky !"
      else
        puts "Nice! Some truth to it! "
      end
    
    sleep(2)
    puts "What about rebounds ? How many of these do you think you'd be able to get?".colorize(:yellow)
# def rebounds_input_getter
    rebounds_input = gets.chomp.to_i
      if rebounds_input == 0 || rebounds_input > 12#back to the start of the loop again after first false condition
        puts "Lets try that again #{user_name}".colorize(:red)
      elsif rebounds_input > 0 || rebounds_input < 12
        puts "Feeling very lucky ! Remember, these guys are really tall"
      else  
        puts "Nice , to be honest, i'd be happy wth any !"
      end
# end
    sleep(2)
    puts "I suppose we better check those assists out now, eh? You reckon you could get many of these? Care to venture a guess?".colorize(:yellow)
# def assists_input_getter
      assists_input = gets.chomp.to_i
        if assists == 0 || assists > 12
          puts "Lets try that again #{user_name}".colorize(:red)
        elsif assists_input > 0 || assists_input < 12
          puts "Can't believe it , got a John Stockton amongst us ! "
        else 
          puts "Thats a good effort, I think we'd see some turnovers too though unfortunately ! "
        end
# end  
    sleep(2)
    puts "\n"
    puts "Lastly, i suppose we better check how durable you're going to be. Out of 82 games, how many do you think you'd be able to play in?".colorize(:yellow)
# def games_played_input
      games_played = gets.chomp.to_i
        if games_played == 0 || games_played > 82
          puts "Thats not possible #{user_name}! Try again please.".colorize(:red) #back to start of loop please
        elsif games_played > 65 && games_played < 83
          puts "I think that would be a very good effort #{user_name}"
        else
          puts "I think any number of games played is a good effort!!"
        end
# end

    puts "\n"
  
    sleep(2)


  puts "For a newbie in the NBA, you've done pretty well, you scored #{points_input} points, collected #{rebounds_input} rebounds, dished out #{assists_input} assists, and all through this managed to play a sturdy #{games_played} games against these giants ! Nice Work #{user_name}"

  puts "heres you on the table".colorize(:yellow)

  table << [user_name,6]

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


# user_name = Player_rating.new(15,6,3)
# p user_name


# user_name_hash = user_name.to_h

# p user_name_hash

