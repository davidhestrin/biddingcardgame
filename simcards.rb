times = 0
victories = 0
defeats = 0
ties = 0
start = Time.now
while times < 1000000
  your_cards = [2,3,4,5,6,7,8,9,10,11,12,13,14]
  your_wins = []
  opponent_cards = [2,3,4,5,6,7,8,9,10,11,12,13,14]
  random_bids = opponent_cards.shuffle
  opponent_wins = []
  bid_cards = [2,3,4,5,6,7,8,9,10,11,12,13,14]
  idx = 0
  while idx < 13
      if your_cards[idx] > random_bids[idx]
        your_wins << bid_cards[idx]
      elsif your_cards[idx] < random_bids[idx]
         opponent_wins << bid_cards[idx]
       else
         nil
        end
    idx += 1
  end

  if your_wins.reduce(0, :+) > opponent_wins.reduce(0, :+)
    victories += 1
  elsif your_wins.reduce(0, :+) < opponent_wins.reduce(0, :+)
    defeats += 1
  else
    ties += 1
  end
  times += 1
end
finish = Time.now
difference = finish - start
puts difference
puts "Victories: #{victories}"
puts "Defeats: #{defeats}"
puts "Ties: #{ties}"
