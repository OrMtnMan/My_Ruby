START_STR = 'Ready to play? [0] - Start, [1] - Exit'
CPU_DIFFICULTY_STR = 'Select a difficulty: [0] - Easy, [1] - Hard'
WHOS_FIRST_STR = 'Who should go first? [0] - You, [1] - CPU,' \
              ' [2] - Random'
X_OR_O_STR = 'Do you want to be O or X? [0] - O, [1] - X'
MAKE_MOVE = 'Select a box for your move or [0] to exit.'
WIN_COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
              [0, 3, 6], [1, 4, 7], [2, 5, 8],
              [0, 4, 8], [2, 4, 6]]
CORNERS = [0, 2, 6, 8]
BOARD_SPLIT = '-------------'.center(60)
BOARD = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def prompt_return(str, ary)
  inp = ''
  loop do
    puts str
    inp = gets.chomp
    break if ary.include?(inp.to_i) && inp == inp.to_i.to_s
    puts 'Please make a valid selection'
  end
  inp.to_i
end

def print_board(ary)
  puts BOARD_SPLIT
  puts print_line(ary, 0)
  puts BOARD_SPLIT
  puts print_line(ary, 3)
  puts BOARD_SPLIT
  puts print_line(ary, 6)
  puts BOARD_SPLIT
end

def print_line(ary, line)
  "| #{ary[line]} | #{ary[line + 1]} | #{ary[line + 2]} |".center(60)
end

def player_turn?(turn)
  turn.zero?
end

def play_game(turn, x_or_o, cpu_difficulty, winner = '', board = BOARD)
  while winner == ''
    system('clear') || system('cls')
    print_board(board)
    rem_moves = board.select { |s| s != 'X' && s != 'O' }
    if player_turn?(turn)
      turn = 1
      move = prompt_return(MAKE_MOVE, rem_moves << 0)
      break if move.zero?
      board[move - 1] = x_or_o[:player]
    else
      turn = cpu_turn(board, cpu_difficulty, x_or_o)
    end
    winner = det_winner(board, x_or_o)
  end

  winner
end

def cpu_turn(board, cpu_difficulty, x_or_o)
  if cpu_difficulty.zero?
    board[rem_moves.sample - 1] = x_or_o[:cpu]
  else
    board[hard_ai(board, x_or_o) - 1] = x_or_o[:cpu]
  end
  0
end

def det_winner(board, x_or_o)
  winner = ''
  WIN_COMBOS.each do |combo|
    if combo.map { |n| board[n] }.count(x_or_o[:player]) == 3
      winner = 'You'
    elsif combo.map { |n| board[n] }.count(x_or_o[:cpu]) == 3
      winner = 'Computer'
    elsif (board.count('X') + board.count('O')) == 9
      winner = 'draw'
    end
  end
  winner
end

def hard_ai(board, x_or_o)
  corner_map = CORNERS.map { |n| board[n] }

  return 5 if (board.count('X') + board.count('O')).zero?

  return offense_defense(board, x_or_o) if !offense_defense(board, x_or_o).nil?

  return corner_play(board, x_or_o) if corner_map.include?(1..9)

  board.select { |s| s != 'X' && s != 'O' }.sample
end

def offense_defense(board, x_or_o)
  WIN_COMBOS.each do |combo|
    combo_map = combo.map { |n| board[n] }
    plr_in = combo_map.count(x_or_o[:player])
    cpu_in = combo_map.count(x_or_o[:cpu])

    if (plr_in == 2 && cpu_in < 1) || (cpu_in == 2 && plr_in < 1)
      combo_map.each { |n| return n if (1..9).cover?(n) }
    end
  end

  nil
end

def corner_play(board, x_or_o)
  corner_map = CORNERS.map { |n| board[n] }
  corner_map_nrs = corner_map.select { |n| (1..9).cover?(n) }

  corner_map_nrs.each do |number|
    win_combo_with_nr = WIN_COMBOS.select { |a| a.include?(number - 1) }
    win_combo_with_nr.each do |combo|
      if combo.map { |nr| board[nr] }.include?(x_or_o[:player]) == false
        number
      end
    end
  end
end

welcome_text = 'Welcome to Connor\'s Tic-Tac-Toe!'

score = { player: 0, cpu: 0, total: 0 }

loop do
  system('clear') || system('cls')

  puts welcome_text.center(60, '-')
  puts ''
  puts "The score is: You - #{score[:player]}, " \
       "CPU - #{score[:cpu]}".center(60)
  puts ''
  puts "First one to #{score[:total]} wins is the " \
       "overall winner!".center(60)
  puts ''

  start = prompt_return(START_STR, [0, 1])

  break if start == 1

  cpu_difficulty = prompt_return(CPU_DIFFICULTY_STR, [0, 1])
  whos_first = prompt_return(WHOS_FIRST_STR, [0, 1, 2])
  x_or_o = { player: '', cpu: '' }
  x_or_o[:player] = prompt_return(X_OR_O_STR, [0, 1]).zero? ? 'O' : 'X'
  x_or_o[:cpu] = x_or_o[:player] == 'O' ? 'X' : 'O'

  turn = whos_first == 2 ? [0, 1].sample : whos_first

  winner = play_game(turn, x_or_o, cpu_difficulty)

  break if winner == ''

  winner == 'You' ? score[:player] += 1 : score[:cpu] += 1

  if winner == 'draw'
    welcome_text = "Draw! Play again?"
  elsif score[:player] == score[:total] || score[:cpu] == score[:total]
    welcome_text = if score[:player] == score[:total]
                     'You win! Play again?'
                   else
                     'CPU wins... Play again?'
                   end

    score[:player] = 0
    score[:cpu] = 0
  else
    welcome_text = "#{winner} #{winner == 'You' ? 'win' : 'wins'}!" \
                   "Play again?"
  end
end
