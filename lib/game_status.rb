# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

# #won? method determines if the game has been won by a player
def won?(board)
win_combination_array =  WIN_COMBINATIONS.select do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1].upcase
    position_2 = board[win_index_2].upcase
    position_3 = board[win_index_3].upcase

    (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")

    #if position_1 == "X" && position_2 == "X" && position_3 == "X"
    #  return win_combination
    #elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    #  return win_combination
    #else
    #  false
    #end

  end

  if !win_combination_array.empty?
    win_combination_array
  else
    false
  end
  
end
