def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  result = get_user_input
  if result == 'h' 
    card_total += deal_card
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  current_total = 0
  welcome 
  current_total += initial_round
  current_total += hit?(current_total)
  display_card_total(current_total)
  until hit?(current_total) > 21 do
    current_total += hit?(current_total)
  end
  end_game(current_total)
end
    
