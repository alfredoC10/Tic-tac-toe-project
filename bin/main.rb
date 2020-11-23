#!/usr/bin/env ruby
#To get players information
puts "Please insert the name of player A"
player_a = gets.chomp
puts "Player A uses symbol: X"

puts "Please insert the name of player B"
player_b = gets.chomp
puts "Player A uses symbol: O"

puts "Please write your symbol in the available spaces"

=begin
            |              |               
      _     |       _      |     _
___________1|_____________2|____________3
            |              |
      _     |       _      |     _
___________4|_____________5|____________6
            |              |
      _     |       _      |     _                   
           7|             8|            9


      winner lines with the same symbol
      1-2-3      1-4-7     1-5-9
      4-5-6      2-5-8     3-5-7
      7-8-9      3-6-9  
=end
