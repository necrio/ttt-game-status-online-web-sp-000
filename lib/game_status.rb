# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], # top_row
[3,4,5], # middle_row
[6,7,8], # bottom_row
[0,3,6], # left_column
[1,4,7], # center_column
[2,5,8], # right_column
[0,4,8], # left_diagonal
[6,4,2] # right_diagonal
]

def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winner = combo
    elsif combo.all? {|idx| board[idx] == "O"}
      winner = combo
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
  end
end



def full?(board)

   board.all? {|i| i == "X" || i == "O"}


end



def draw?(board)
  if full?(board)
    if won?(board) == false
      true
    else
      false
    end
  else
    false
  end

  if full?(board) == true && won?(board) == false
    return true
  else
    false
  end
end



def over?(board)
   if draw?(board) || won?(board) || full?(board)
     return true
   end

   if full?(board) == false && won?(board) == false
     return false
   else
     true
   end
end




def winner(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winner = "X"
    elsif combo.all? {|idx| board[idx] == "O"}
      winner = "O"
    else
    end
  end
  winner
=======
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
   position_1 = board[win_index_1] # value of board at win_index_1
   position_2 = board[win_index_2] # value of board at win_index_2
   position_3 = board[win_index_3] # value of board at win_index_3
   position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
 end
end

def full?(board)

  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  if !winner(board) && full?(board)
    return true
  elsif
    !won?(board) && !full?(board)
    return false
  elsif won?(board)
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  end
end


def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
