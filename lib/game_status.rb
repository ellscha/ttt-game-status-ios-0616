# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[[0,1,2],
[3,4,5],
[6,7,8],
[0,4,8],
[2,4,6],
[0,3,6],
[1,4,7],
[2,5,8]]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    # if board[win[0]]==board[win[1]] && board[win[2]]==board[win[1]] && (board[win[1]] == "X" || board[win[1]] == "O")
    if (board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]]=="O" )|| (board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]]=="X" )
      print "#{board[win[1]]} wins"
      return true#, win
    end
  end
end

def full?(board)
  board.each do |slot|
    if slot == " "
      return false
    end
  end
  return true
end


def draw?(board)
  if !won(board) && full?(board)
    return true
  end
  return false
end


def over?()
