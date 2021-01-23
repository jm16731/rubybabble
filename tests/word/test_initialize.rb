require_relative "../../word.rb"
require "minitest/autorun"
include RubyBabble

class TestInitialize < Minitest::Test
  def setup
    @word = Word.new
  end

  def test_create_empty_word
    assert_equal [], @word.tiles
  end
end
