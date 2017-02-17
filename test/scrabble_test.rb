gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
# require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
   
  end

  def test_letter_multipliers
    game = Scrabble.new
    game.score_with_multipliers('hello', [1,2,1,1,1])  # => 9
  end
end
