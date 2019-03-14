ST_STR = 'Ready to play? [0] - Start, [1] - Exit'
CPU_DIFF_STR = 'Select a difficulty: [0] - Easy, [1] - Hard'
PLR_FST_STR = 'Who should go first? [0] - You, [1] - CPU,' \
              ' [2] - Random'
X_OR_O_STR = 'Do you want to be O or X? [0] - O, [1] - X'
MAKE_MOVE = 'Select a box for your move or [0] to exit.'

def prompt_ret(str, ary)
  inp = ''
  loop do
    puts str
    inp = gets.chomp.to_i
    break if ary.include?(inp)
    puts 'Please make a valid selection'
  end
  inp
end

def print_board(ary)
  puts '-------------'.center(60)
  puts "| #{ary[0]} | #{ary[1]} | #{ary[2]} |".center(60)
  puts '-------------'.center(60)
  puts "| #{ary[3]} | #{ary[4]} | #{ary[5]} |".center(60)
  puts '-------------'.center(60)
  puts "| #{ary[6]} | #{ary[7]} | #{ary[8]} |".center(60)
  puts '-------------'.center(60)
end

def play_game(turn, x_or_o, cpu_diff)
  x_or_o_b = 0
  x_or_o_b = 1 if x_or_o.zero?
  board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  x_o_ary = ['O', 'X']
  winner = ''

  loop do
    system 'cls'
    print_board(board)
    rem_moves = board.select { |s| s != 'X' && s != 'O' }
    if turn.zero?
      turn = 1
      move = prompt_ret(MAKE_MOVE, rem_moves << 0)
      winner = 0 if move.zero?
      break if move.zero?
      board[move - 1] = x_o_ary[x_or_o]
    else
      turn = 0
      if cpu_diff.zero?
        board[rem_moves.sample - 1] = x_o_ary[x_or_o_b]
      else
        board[hard_ai(board, x_or_o, x_or_o_b) - 1] = x_o_ary[x_or_o_b]
      end
    end
    winner = det_winner(board, x_or_o, x_or_o_b)
    break unless winner == ''
  end

  winner
end

def det_winner(board, plr, cpu)
  win_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                [0, 3, 6], [1, 4, 7], [2, 5, 8],
                [0, 4, 8], [2, 4, 6]]
  x_o_ary = ['O', 'X']
  winner = ''
  win_combos.each do |combo|
    if combo.map { |n| board[n] }.count(x_o_ary[plr]) == 3
      winner = 'You'
    elsif combo.map { |n| board[n] }.count(x_o_ary[cpu]) == 3
      winner = 'Computer'
    elsif (board.count('X') + board.count('O')) == 9
      winner = 'draw'
    end
  end
  winner
end

def hard_ai(board, plr, cpu)
  win_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                [0, 3, 6], [1, 4, 7], [2, 5, 8],
                [0, 4, 8], [2, 4, 6]]
  cnrs = [0, 2, 6, 8]
  x_o_ary = ['O', 'X']
  if (board.count('X') + board.count('O')).zero?
    return 5
  else
    win_combos.each do |combo|
      plr_in = combo.map { |n| board[n] }.count(x_o_ary[plr])
      cpu_in = combo.map { |n| board[n] }.count(x_o_ary[cpu])

      if plr_in == 2 && cpu_in < 1
        combo.map { |n| board[n] }.each { |n| return n if (1..9).cover?(n) }
      elsif cpu_in == 2 && plr_in < 1
        combo.map { |n| board[n] }.each { |n| return n if (1..9).cover?(n) }
      end
    end
    if cnrs.map { |n| board[n] }.include?(1..9)
      cnrs.map { |n| board[n] }.select { |n| (1..9).cover?(n) }.each do |n|
        win_combos.select { |a| a.include?(n - 1) }.each do |combo|
          if combo.map { |nr| board[nr] }.include?(x_o_ary[plr]) == false
            return false
          end
        end
      end
    else
      return board.select { |s| s != 'X' && s != 'O' }.sample
    end
  end
end

welcome_text = 'Welcome to Connor\'s Tic-Tac-Toe!'

score_plr = 0
score_cpu = 0

loop do
  system 'cls'

  puts welcome_text.center(60, '-')

  start = prompt_ret(ST_STR, [0, 1])

  break if start == 1

  cpu_diff = prompt_ret(CPU_DIFF_STR, [0, 1])
  plr_fst = prompt_ret(PLR_FST_STR, [0, 1, 2])
  x_or_o = prompt_ret(X_OR_O_STR, [0, 1])

  turn = plr_fst == 2 ? [0, 1].sample : plr_fst

  winner = play_game(turn, x_or_o, cpu_diff)

  break if winner == 0

  winner == 'You' ? score_plr += 1 : score_cpu += 1

  if winner == 'draw'
    welcome_text = "Draw! The score is  You - #{score_plr}" \
                   ", CPU - #{score_cpu}. Play again?"
  elsif score_plr == 5 || score_cpu == 5
    welcome_text = if score_plr == 5
                     'You win! Play again?'
                   else
                     'CPU wins, play again?'
                   end

    score_plr = 0
    score_cpu = 0
  else
    welcome_text = "#{winner} #{winner == 'You' ? 'win' : 'wins'}! The score" \
                   " is You - #{score_plr}, CPU - #{score_cpu}. Play again?"
  end
end
