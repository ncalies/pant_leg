puts ""
puts "So here is the situation. You are riding your bike and you need to know what to do with your pant legs so you can either stay warm if it is cold or cool if it is hot."
puts ""
puts "The hard part is that we need to avoid getting your pants stuck in your chain and avoid getting grease on your pants."
puts ""
puts "So I'm going to ask you a series of questions and by the end, I can tell you what to do so you have the most comfortable ride you can while keeping those nice pants of yours clean and tear free."

puts "Question 1: What is the current temperature that you will be riding in?"
reply_temperature = gets.chomp
if reply_temperature.to_i <= 50
  puts "Holy Moly, #{reply_temperature} degrees! That's cold. Good for you for riding your bike!"
else  
	puts "#{reply_temperature} degrees! That is sooooo warm! You are going to be pretty darn sweaty by the time you get there."
end

puts "Question 2: What direction is the wind blowing? (N,S,E,W)"
reply_wind_direction = gets.chomp 
if %w(N S E W).include?(reply_wind_direction) 
  puts "Well, you're screwed!"
	puts "I'm just joking, but seriously, you are!"
end

puts "Question 3: What direction will you be traveling? (N,S,E,W)"
reply_traveling_direction = gets.chomp
if %w(N S E W).include?(reply_traveling_direction)
	puts "You are definitely going places heading in that direction! :)"
end

puts ''

puts "Relating to temperature only:"
if reply_temperature.to_i <= 50
	puts "You will need to keep both pant legs down so I recommend either using a pantleg strap for your right leg or tucking it into your sock."
else
	puts "Since it's so warm, I would recommend rolling your right pant leg up. If you are feeling ambitious, maybe try rolling the left up too."
end

puts ''

puts "And as for wind direction:"

traveling_n = reply_traveling_direction == "N"
blowing_n = reply_wind_direction == "N"
traveling_e = reply_traveling_direction == "E"
blowing_e = reply_wind_direction == "E"
traveling_s = reply_traveling_direction == "S"
blowing_s = reply_wind_direction == "S"
traveling_w = reply_traveling_direction == "W"
blowing_w = reply_wind_direction == "W"

if (traveling_n && blowing_w) || (traveling_e && blowing_n) || (traveling_s && blowing_e) || (traveling_w && blowing_s)

  puts "You need to roll your right pant leg up because with your direction of travel, the wind will blow your pant leg towards the chain."
else
  puts "It won't effect your pant leg but I would still recommend doing something to tighten it up."
end