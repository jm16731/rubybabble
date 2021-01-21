require_relative "../../word.rb"
require "minitest/autorun"
include RubyBabble

class TestInitalize < Minitest::Test
  def setup
    @word = Word.new
  end

  def test_create_empty_word
  end
end
