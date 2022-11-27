class GameBoard
  @@array = [1*..9]
  @@board = "_1_|_2_|_3_\n_4_|_5_|_6_\n_7_|_8_|_9_"
  @@p1_win_condition = 0
  @@p2_win_condition = 0

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def update_array(number, symbol)
    @@array.map {|x| x == number? symbol : x}
  end

  def update_board(number, player)
    if player == @player1
      update_array(number, 'X')
      board.gsub!(number.to_s, 'X')
      puts board
      check_win(player)
    end

    else player == @@player2
      update_array(number, 'O')
      board.gsub!(number.to_s, 'O')
      puts board
      check_win(player)
    end
  end

  def check_win(player)
    if @@array[index+1] == player && @@array[index+2] == player
      set_win(player)

    elsif @@array[index+3] == player && @@array[index+3] == player
      set_win(player)

    elsif @@array[index+4] == player && @@array[index+4] == player
      set_win(player)
    end
  end

  def check_valid_number(number)
    
  end

  def set_win(player)
    if player == @player1
      @@p1_win_condition = 1
    else 
      @@p2_win_condition = 1
    end
  end

  def simulate_game
    puts "This will be a standard 1v1 game of Tic-Tac-Toe. \n You will be 'Player 1' and using symbol 'X'. What is your name?"
    @player1 = gets.chomp
    player1 = Player.new(@player1 'X')

    puts "You will be Player 2. What is your name?"
    player2 = gets.chomp
    player2 = Player.new(@player2, 'O')

    while @@p1_win_condition == 0 || @@p2_win_condition = 0
      puts "Here is the gameboard, please choose your position. \n #{@@board}"
      player1_move = gets.chomp 
end

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  
  def player_choice
    puts "Where would you like to place your piece?"
    player = gets.chomp
    return player
  end

end