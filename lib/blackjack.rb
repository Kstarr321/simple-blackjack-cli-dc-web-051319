def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
end

def hit?(total)
  prompt_user
  x = get_user_input
  if (x == "h")
    total + deal_card
  elsif (x == "s") 
    total 
  else 
    hit?(total)
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  
end
    
