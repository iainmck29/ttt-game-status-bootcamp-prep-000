# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def won?(board)
  empty_board = board.all? {|x| x == " "}

  WIN_COMBINATIONS.each do |winners|
      win_index_1 = winners[0]
      win_index_2 = winners[1]
      win_index_3 = winners[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return winners
        return true
      elsif empty_board == true
    return false
    end
  end
  return false
end


def full?(board)
  board.all? {|x| x != " "}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  end
end

def winner?(board)
  if won?(board) == true
    WIN_COMBINATIONS.each do |winners|
        win_index_1 = winners[0]
        win_index_2 = winners[1]
        win_index_3 = winners[2]

        position_1 = board[win_index_1]
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]

        if (position_1 == "X" && position_2 == "X" && position_3 == "X")
          return "X"
        elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
          return "O"
        end
      end
    end
  end