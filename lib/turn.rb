def display_board(board)
    row_1 = [" #{board[0]} | #{board[1]} | #{board[2]} "]
    row_2 = [" #{board[3]} | #{board[4]} | #{board[5]} "]
    row_3 = [" #{board[6]} | #{board[7]} | #{board[8]} "]
    separator = ["-----------"]
    puts row_1
    puts separator
    puts row_2
    puts separator
    puts row_3
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(array, index, character = "X")
  array[index] = character
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board,index)
    then false
  elsif index.between?(0,8)
    then true
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board[index] == "O" || board[index] == "X"
      then true
    elsif board[index] == "" || board[index] == " " || board[index] == nil
      then false
    end
  end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if !valid_move?(board, index)
      until valid_move?(board, index)
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
        valid_move?(board, index)
      end
    else
      move(board, index, character = "X")
    end
    puts display_board(board)
  end
