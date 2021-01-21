require_relative "../../word.rb"
require "minitest/autorun"
include RubyBabble

class TestInitalize < Minitest::Test
  def setup
    @word = Word.new
  end

  def test_empty_word_should_have_score_of_zero
  end

  def test_score_a_one_tile_word
  end

  def test_score_a_word_with_multiple_different_tiles
  end

  def test_score_a_word_with_recurring_tiles
  end
end
