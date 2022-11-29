class GameBoard
  @@array = [*1..9]
  @@board = "_1_|_2_|_3_\n_4_|_5_|_6_\n_7_|_8_|_9_"
  @@p1_win_condition = 0
  @@p2_win_condition = 0

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end
  
  def check_valid_position(position)
    if @@array.include?(position) == true
      return true
    else
      return false
    end
  end

  def update_position(position, player)
    if player == @player_one
      @@array[position-1] = "X"
      @@board.gsub!(position.to_s, "X")
    else
      @@array[position-1] = "O"
      @@board.gsub!(position.to_s, "O")
    end
  end

  def display_board()
    puts "------------\n\n #{@@board} \n\n------------"
  end

  def check_win(player)
    for i in 0..8

      if i == 0 && @@array[i] == player

        if @@array[i+1] == player && @@array[i+2] == player
          set_win(player)

        elsif @@array[i+3] == player && @@array[i+6] == player
          set_win(player)

        elsif @@array[i+4] == player && @@array[i+8] == player
          set_win(player)
        
        end

      elsif i == 3 && @@array[i] == player

        if @@array[i+1] == player && @@array[i+2] == player
          set_win(player)
        end

      elsif i == 6 && @@array[i] == player

        if @@array[i+1] == player && @@array[i+2] == player
          set_win(player)
        
        elsif @@array[i-2] == player && @@array[i-4] == player
            set_win(player)

        end
      end
    end
  end

  def set_win(player)
    if player == 'X'
      puts "#{@player_one} Won!"
      @@p1_win_condition = 1      
    else
      puts "#{@player_two} Won!"
      @@p2_win_condition = 1
    end
  end

  def simulate_game
    
    while @@p1_win_condition == 0 && @@p2_win_condition == 0
      display_board()
      
      #PLAYER 1'S TURN
      puts "It is #{@player_one}'s turn. Please enter a position!"
      p1_position = gets.chomp.to_i

      #CHECK PLAYER 1 VALID MOVE OR NOT
      if check_valid_position(p1_position) == true
        update_position(p1_position, @player_one)
        display_board()
      else
        p1_position = gets.chomp.to_i
        check_valid_position(p1_position)
      end

      check_win('X')
      if @@p1_win_condition == 1
        break
      end

      #PLAYER 2'S TURN
      puts "It is #{@player_two}'s turn. Please enter a position!"
      p2_position = gets.chomp.to_i

      #CHECK PLAYER 1 VALID MOVE OR NOT
      if check_valid_position(p2_position) == true
        update_position(p2_position, @player_two)
        display_board()
      else
        p2_position = gets.chomp.to_i
        check_valid_position(p1_position)
      end

      check_win('O')
    end
  end
end

puts "Please enter the name for Player 1:"
player_one_name = gets.chomp

puts "Please enter the name for Player 2:"
player_two_name = gets.chomp

Game = GameBoard.new(player_one_name, player_two_name)
Game.simulate_game