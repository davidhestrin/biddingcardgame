puts ""
puts "Welcome to the card game!"
puts "You play by bidding for cards against opponent(s)."
puts "Whoever has the highest bid, wins the card."
puts "Each card has its number value."
puts "After all bidding has completed, whoever has the most points wins."
puts "Shuffle up and deal!"

your_cards = [2,3,4,5,6,7,8,9,10,11,12,13,14]
your_wins = []
opponent_cards = [2,3,4,5,6,7,8,9,10,11,12,13,14]
random_bids = opponent_cards.shuffle
opponent_wins = []
bid_cards = [2,3,4,5,6,7,8,9,10,11,12,13,14].shuffle
idx = 0

while idx < 13
  puts ""
  puts "Choose your bid for card #{bid_cards[idx]}"

  puts "You have these cards left:"
  puts "#{your_cards.join(", ")}"
  bid = gets.chomp.to_i

  if your_cards.include?(bid)
  puts "You bid #{bid} your opponent bid #{random_bids[idx]}"
  your_cards.delete(bid)
    if bid > random_bids[idx]
      your_wins << bid_cards[idx]
      puts "You WON the #{bid_cards[idx]} card!"
    elsif bid < random_bids[idx]
       opponent_wins << bid_cards[idx]
       puts "Your opponent won the #{bid_cards[idx]} card."
     else
       puts "Neither player won the #{bid_cards[idx]} card."
     end
  idx += 1
  else
    puts "You can only bid cards that you have!"
  end
end

puts "You won these cards: #{your_wins.join(", ")}"
puts "Your opponent won these cards: #{opponent_wins.join(", ")}"
puts "Your total points: #{your_wins.reduce(0, :+)}"
puts "Your opponent's total points: #{opponent_wins.reduce(0, :+)}"

  if your_wins.reduce(0, :+) > opponent_wins.reduce(0, :+)
  puts "You won!"
  elsif your_wins.reduce(0, :+) < opponent_wins.reduce(0, :+)
  puts "You lost"
  else
  puts "You tied!"
end
