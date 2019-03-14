CHOICE = %w(ROCK PAPER SCISSORS LIZARD SPOCK).freeze

VAL_CHOICE = %w(ROCK PAPER SCISSORS LIZARD SPOCK RO PA SC LI SP).freeze

SHORT_CHOICE = { RO: 'ROCK', PA: 'PAPER', SC: 'SCISSORS',
                 LI: 'LIZARD', SP: 'SPOCK' }.freeze

WIN = { ROCK: %w(SCISSORS LIZARD),
        PAPER: %w(ROCK SPOCK),
        SCISSORS: %w(PAPER LIZARD),
        LIZARD: %w(SPOCK PAPER),
        SPOCK: %w(ROCK SCISSORS) }.freeze

WINTEXT = { ROCKSCISSORS: 'Rock crushes Scissors.',
            ROCKLIZARD: 'Rock crushes Lizard.',
            PAPERROCK: 'Paper covers Rock.',
            PAPERSPOCK: 'Paper disproves Spock.',
            SCISSORSPAPER: 'Scissors cut Paper.',
            SCISSORSLIZARD: 'Scissors decapitates Lizard.',
            LIZARDSPOCK: 'Lizard poisons Spock.',
            LIZARDPAPER: 'Lizard eats Paper.',
            SPOCKROCK: 'Spock crushes Rock,',
            SPOCKSCISSORS: 'Spock smashes scissors.' }.freeze

NOTVALID = 'Please choose a valid selection'.freeze

def prompt(message)
  puts "=> #{message}"
end

def short_convert(sel)
  return SHORT_CHOICE[sel.to_sym] if SHORT_CHOICE.key?(sel.to_sym)
  sel
end

def player_selection
  sel = ''
  loop do
    prompt("Choose one of the following: #{CHOICE.join(', ')}")
    prompt 'You can also chose by typing the first two letters.'
    sel = gets.chomp.upcase
    break if VAL_CHOICE.include?(sel)
    prompt NOTVALID
  end
  sel
end

def win_lose(pl_sel, op_sel)
  if pl_sel == op_sel
    prompt 'It is a draw!'
    'Draw'
  elsif WIN[pl_sel.to_sym].include?(op_sel)
    prompt WINTEXT[(pl_sel + op_sel).to_sym]
    prompt 'You win this round!'
    'Player'
  else
    prompt WINTEXT[(op_sel + pl_sel).to_sym]
    prompt 'You lose...'
    'Opponent'
  end
end

prompt 'Welcome to Rock, Paper, Scissors, Spock, Lizard - EXTREME!'
prompt 'Are you ready to play?'
sel = 0
score = { Player: 0, Opponent: 0, Draw: 0 }

loop do
  loop do
    val_sel = [1, 2]
    prompt('1 - Yes, 2 - Exit')
    sel = gets.chomp.to_i
    break if val_sel.include?(sel)
    prompt NOTVALID
  end

  break if sel == 2

  sel = short_convert(player_selection)

  op_choice = CHOICE.sample

  prompt "You: #{sel.capitalize}, computer: #{op_choice.capitalize}."

  winner = win_lose(sel, op_choice)

  score[winner.to_sym] += 1

  prompt 'Here is the score:'
  prompt "You: #{score[:Player]}, Computer: #{score[:Opponent]}"
  if score[:Player] < 5 && score[:Opponent] < 5
    prompt 'Continue?'
  else
    prompt score[:Player] == 5 ? 'You win! Play again?' : 'You lose, try again?'
    score[:Player] = 0
    score[:Opponent] = 0
  end
end
