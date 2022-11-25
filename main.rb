module GameBoard
    array = [*1..9]
    board = "_1_|_2_|_3_\n_4_|_5_|_6_\n_7_|_8_|_9_"

    def update_array(index))
      array.delete_at(inex)
    end

    def update_board(number,player)
      choice = array.index(number)
      board = board.gsub!(choice,player)
      update_array(choice)
      return board
    end

  end
  
  
  
  
  class Player
    include GameBoard

    def initialize(name, win_condition)
      @name = name
      @win_condition = win_condition
    end
  
    def player_choice
      puts "Where would you like to place your piece?"
      player = gets.chomp
      return player
    end

    def computer_choice
      computer = array.sample
      update_array(computer)
      return computer
    end

    def check_win
      if array[index+1] == player && array[index+2] == player
        set win == true
  
      elsif array[index+3] == player && array[index+3] == player
        set win == true
  
      elsif array[index+4] == player && array[index+4] == player
        set win == true
  
      else
  
      end
    end

    def simulate_game
      while @win_condition == 0 
        self.update_board(self.player_choice, 'X')

      end
    end

  end
  
  # puts "What is your name?"
  # query = gets.chomp
  # first_player = Player.new(query)
  # puts first_player.print_name
  
puts "Hello there! What is your name?"
get_name = gets.chomp 

new_player = Player.new(name, 0)





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

  [1,2,3,4,5,..9]
  [X,2,3,X,5,6,X,8,9]

  array.each do |spot|
    if spot == 'x'
      check_win(array.index(spot), spot)

    elsif spot == 'y'
      check_win(array.index(spot), spot)

    else

    end
  end


  def check_win(index, player)
    if array[index+1] == player && array[index+2] == player
      set win == true

    elsif array[index+3] == player && array[index+3] == player
      set win == true

    elsif array[index+4] == player && array[index+4] == player
      set win == true

    else

    end

  end
