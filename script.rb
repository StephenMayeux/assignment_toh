class TowerOfHanoi
  ## Class Variables
  @@messages = {
    new_game: "Welcome to the Tower of Hanoi!\nInstructions:\nEnter where you'd like to move from and to\nin the format [1,3]. Enter 'q' to quit.",
    wrong_input: "You have entered invalid input.\nEnter where you'd like to move from and to\nin the format [1,3]. Enter 'q' to quit.",
    winner: "Congratulations! You have won the game!",
    quit: "You have quit the game.\nHope to see you again!",
    illegal_move: "You can't add a bigger piece atop a smaller piece.\nPlease try again."
  }
  @@game_over = false

  def render_game_grid
    puts "this is a grid!"
  end

  def get_input
    @input = gets.chomp
    if @input.downcase == 'q' || 'quit'
      puts @@messages[:quit]
      @@game_over = true
    end
  end

  def start_game_loop
    puts @@messages[:new_game]
    get_input
    until @@game_over
      break
    end
  end

  def start(number_of_pieces)
    render_game_grid
    start_game_loop
  end
end
