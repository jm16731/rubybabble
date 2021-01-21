require_relative "../../word.rb"
require "minitest/autorun"
include RubyBabble

class TestInitalize < Minitest::Test
  def setup
    @word = Word.new
  end

  def test_empty_word_should_have_score_of_zero
    assert_equal 0, @word.score
  end

  def test_score_a_one_tile_word
    @word.append(:A)
    assert_equal 1, @word.score
  end

  def test_score_a_word_with_multiple_different_tiles
    @word.append(:A)
    @word.append(:X)
    @word.append(:E)
    assert_equal 10, @word.score
  end

  def test_score_a_word_with_recurring_tiles
    @word.append(:A)
    @word.append(:P)
    @word.append(:P)
    @word.append(:L)
    @word.append(:E)
    assert_equal 9, @word.score
  end
end
