module GameBoard
    array = [*1..9]
    board = "_1_|_2_|_3_\n_4_|_5_|_6_\n_7_|_8_|_9_"
  
    def update_board(number,player)
      choice = array.index(number)
      board = board.gsub!(choice,player)
      array.delete_at(choice)
      return board
    end

  end
  
  
  
  
  class Player
    include GameBoard

    def initialize(name)
      @name = name
    end
  
    def player_choice
      puts "Where would you like to place your piece?"
      player = gets.chomp
      return player
    end
  end
  
  # puts "What is your name?"
  # query = gets.chomp
  # first_player = Player.new(query)
  # puts first_player.print_name
  
  board = "_1_|_2_|_3_\n_4_|_5_|_6_\n_7_|_8_|_9_"
  # puts board
  array = [*1..9]
  
  while array.length > 0
    computer_choice = array.sample
    puts computer_choice
    puts array.index(computer_choice)
  
    board = board.gsub(computer_choice.to_s,'X')
    puts "\n" + board + "\n"
  
    array.delete_at(array.index(computer_choice))
    p array
  end