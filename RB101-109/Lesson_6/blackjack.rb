SUITS = %w(clubs diamonds hearts spades)
VALUES = %w(2 3 4 5 6 7 8 9 10 jack queen king ace)
WELCOME_TEXT = 'Welcome to Connor\'s Blackjack Table!'
MAIN_MENU = 'Press [1] to play, [0] to exit'
NEXT_HAND = 'Play next hand? Press [1] to play, [0] to exit'
START_AGAIN = 'Do you wish to play again? Press [1] to play, [0] to exit'
HANDS_TO_WIN = 5
CHARLIE = 5
RULES_A = 'To win a hand, you must get a number of ' \
          'cards that equal 21'
RULES_B = 'Number cards are their value'
RULES_C = 'Face cards are 10'
RULES_D = 'Aces are either 1 or 11'
RULES_E = 'The deck is shuffled when out of cards or' \
          'after 5 winning hands.'
DEALER_DEALT = 'Dealer is dealt a card.'
SCORE_TO_WIN = 21
HOUSE_HIT_UNTIL = 17
FACE_CARDS = %w(jack queen king)
NUMBER_CARDS = %w(1 2 3 4 5 6 7 8 9 10)
HIT_OR_STAY = 'Press [1] to hit or [2] to stay.'
S_ARY = [0, 2, 3, 4, 5]

def get_input(message, valid)
  loop do
    puts message
    input = gets.chomp
    return input.to_i if valid.include?(input.to_i) && input == input.to_i.to_s
    puts 'Please use a valid input.'
  end
end

def display_welcome
  puts WELCOME_TEXT.center(60, '-')
  puts ''
end

def display_continue
  puts NEXT_HAND.center(60, '-')
  puts''
end

def display_start_again
  puts START_AGAIN.center(60, '-')
  puts''
end

def display_rules
  puts RULES_A.center(60)
  puts RULES_B.center(60)
  puts RULES_C.center(60)
  puts RULES_D.center(60)
  puts RULES_E.center(60)
  puts ''
  puts "If the player draws #{CHARLIE} cards without " \
       "busting, you win the hand".center(60)
  puts 'This is called a "Charlie"'.center(60)
  puts ''
  puts "The first one to get #{HANDS_TO_WIN} winning " \
       "hands is the winner".center(60)
end

def display_score(score)
  player_score = score['Player']
  house_score = score['House']
  puts "You have won #{player_score} " \
       "hand#{'s' if S_ARY.include?(player_score)} out of #{HANDS_TO_WIN}."
  puts "While the house has won #{house_score} " \
       "hand#{'s' if S_ARY.include?(house_score)} out of #{HANDS_TO_WIN}"
end

def display_winner(hand_winner)
  hand_winner = 'You' if hand_winner == 'Player'
  puts "#{hand_winner} as won #{HANDS_TO_WIN} hands. Game Over"
end

def display_lead(score)
  player_score = score['Player']
  house_score = score['House']
  if player_score == house_score
    puts 'It\'s a tie!'
  elsif player_score > house_score
    puts 'You are in the lead!'
  else
    puts 'The house is in the lead'
  end
end

def exit?(input)
  input.zero?
end

def enter_to_continue
  loop do
    puts ''
    puts 'Press any key to continue...'.center(60)
    key = gets.chomp
    break if key
  end
end

def shuffle_deck(deck)
  SUITS.each do |suit|
    VALUES.each { |value| deck << "#{value} of #{suit}" }
  end
end

def play_hand(deck)
  house_hand = []
  player_hand = []

  initial_draw(house_hand, player_hand, deck)
  enter_to_continue

  winner = check_auto_win_lose(player_hand, house_hand)
  return winner unless winner == ''

  print_player_hand(player_hand)

  player_action(player_hand, deck)
  winner = check_auto_win_lose(player_hand, house_hand)
  return winner unless winner == ''

  house_action(house_hand, deck)
  winner = check_auto_win_lose(player_hand, house_hand)
  return winner unless winner == ''

  determine_winner(player_hand, house_hand)
end

def initial_draw(house_hand, player_hand, deck)
  2.times do |_|
    house_hand << deal_card(deck)
    puts DEALER_DEALT
    player_card = deal_card(deck)
    player_hand << player_card
    puts "You are dealt a #{player_card}."
  end
end

def deal_card(deck)
  shuffle_deck if deck.empty?
  card_drawn = deck.sample
  deck.delete(card_drawn)
  card_drawn
end

def check_auto_win_lose(player_hand, house_hand)
  player_score = get_score(player_hand)
  house_score = get_score(house_hand)
  display_auto_win_lose(player_score, house_score)
  return 'Player' if player_score == SCORE_TO_WIN || house_score > SCORE_TO_WIN
  return 'House' if house_score == SCORE_TO_WIN || player_score > SCORE_TO_WIN
  ''
end

def display_auto_win_lose(player_score, house_score)
  puts 'You got blackjack!' if player_score == SCORE_TO_WIN
  puts 'You busted...' if player_score > SCORE_TO_WIN
  puts 'The house got blackjack!' if house_score == SCORE_TO_WIN
  puts 'The house busted!' if house_score > SCORE_TO_WIN
end

def print_player_hand(player_hand)
  puts 'You have..'.center(60)
  player_hand.each { |card| puts card.center(60) }
  puts "Your current hand score is #{get_score(player_hand)}.".center(60)
  puts ''
end

def get_score(hand)
  score = 0
  hand.each do |card|
    value = card.split[0]
    score += 10 if FACE_CARDS.include?(value)
    score += 11 if value == 'ace'
    score += value.to_i if NUMBER_CARDS.include?(value)
  end
  score = ace_score_change(score, hand)
end

def ace_score_change(score, hand)
  aces = hand.count('ace')
  loop do
    break if aces.zero?
    if score > 21 && aces > 1
      aces -= 1
      score -= 10
    end
  end
  score
end

def player_action(player_hand, deck)
  loop do
    player_choice = get_input(HIT_OR_STAY, [1, 2])
    break if stay?(player_choice)
    puts ''
    player_card = deal_card(deck)
    player_hand << player_card
    puts "You are dealt a #{player_card}."

    print_player_hand(player_hand)
    break if get_score(player_hand) >= 21
  end
  player_hand
end

def house_action(house_hand, deck)
  loop do
    break if get_score(house_hand) >= HOUSE_HIT_UNTIL
    house_hand << deal_card(deck)
    puts DEALER_DEALT
  end
  house_hand
end

def determine_winner(player_hand, house_hand)
  house_score = get_score(house_hand)
  player_score = get_score(player_hand)
  puts "Your hand has a score of #{player_score} " \
       "and the house has a score of #{house_score}"
  puts ''
  puts 'The house wins this hand...' if house_score >= player_score
  return 'House' if house_score >= player_score
  puts 'You win this hand!'
  'Player'
end

def stay?(choice)
  choice == 2
end

system('clear') || system('cls')

display_welcome

game_status = 'Not started'

deck = []

shuffle_deck(deck)

score = { 'Player' => 0, 'House' => 0 }

loop do
  display_continue if game_status == 'Started'
  display_start_again if game_status == 'Ended'
  main_input = get_input(MAIN_MENU, [0, 1])
  break if exit?(main_input)

  game_status = 'Started'

  system('clear') || system('cls')

  display_rules
  enter_to_continue

  hand_winner = play_hand(deck)

  score[hand_winner] += 1

  display_score(score)

  if score.value?(HANDS_TO_WIN)
    display_winner(hand_winner)
    game_status = 'Ended'
    score['Player'] = 0
    score['House'] = 0
  end

  display_lead(score) unless game_status == 'Ended'
  puts ''
end
