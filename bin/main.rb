#!/usr/bin/env ruby
# rubocop:disable Lint/UselessAssignment
# To get players information
puts 'Please insert the name of player A'
player_a = gets.chomp
puts 'Player A uses symbol: X'

puts 'Please insert the name of player B'
player_b = gets.chomp
puts 'Player A uses symbol: O'
puts 'Player A, is your turn, write "X" in the available spaces'
#             |              |
#       _     |       _      |     _
# ___________1|_____________2|____________3
#             |              |
#       _     |       _      |     _
# ___________4|_____________5|____________6
#             |              |
#       _     |       _      |     _
#            7|             8|            9
puts 'Your move is not valid, please choose another available space'
puts 'Your move is valid, please choose another available space'
#             |              |
#       X     |       _      |     _
# ___________1|_____________2|____________3
#             |              |
#       _     |       _      |     _
# ___________4|_____________5|____________6
#             |              |
#       _     |       _      |     _
#            7|             8|            9
puts 'Player B, is your turn, write "O" in the available spaces'
#             |              |
#       X     |       _      |     _
# ___________1|_____________2|____________3
#             |              |
#       O     |       _      |     _
# ___________4|_____________5|____________6
#             |              |
#       _     |       _      |     _
#            7|             8|            9
puts 'Your move is not valid, please choose another available space'
puts 'Your move is valid, please choose another available space'
#             |              |
#       X     |       X      |     X
# ___________1|_____________2|____________3
#             |              |
#       O     |       O      |     _
# ___________4|_____________5|____________6
#             |              |
#       _     |       _      |     _
#            7|             8|            9
puts 'Player A won!'
puts 'Would you like to play again? Y/N'
new_game = gets.chomp

#             |              |
#       _     |       _      |     _
# ___________1|_____________2|____________3
#             |              |
#       _     |       _      |     _
# ___________4|_____________5|____________6
#             |              |
#       _     |       _      |     _
#            7|             8|            9
puts 'You selected not to play again, thanks for playing!'

# rubocop:enable Lint/UselessAssignment
