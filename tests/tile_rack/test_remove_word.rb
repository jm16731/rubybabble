require_relative "../../tile_rack.rb"
require_relative "../../word.rb"
require "minitest/autorun"
include RubyBabble

class TestRemoveWord < Minitest::Test
  def setup
    @tile_rack = TileRack.new
  end

  def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    @tile_rack.append(:F)
    @tile_rack.append(:U)
    @tile_rack.append(:N)
    word = @tile_rack.remove_word("fun")

    assert_equal true, @tile_rack.tiles.empty?
    assert_equal "FUN", word.hand
  end

  def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    @tile_rack.append(:U)
    @tile_rack.append(:F)
    @tile_rack.append(:N)
    word = @tile_rack.remove_word("Fun")

    assert_equal true, @tile_rack.tiles.empty?
    assert_equal "FUN", word.hand
  end

  def test_can_remove_word_with_duplicate_letters
    @tile_rack.append(:F)
    @tile_rack.append(:U)
    @tile_rack.append(:N)
    @tile_rack.append(:N)
    @tile_rack.append(:Y)
    word = @tile_rack.remove_word("fuNny")

    assert_equal true, @tile_rack.tiles.empty?
    assert_equal "FUNNY", word.hand
  end

  def test_can_remove_word_without_removing_unneeded_duplicate_letters
    @tile_rack.append(:F)
    @tile_rack.append(:U)
    @tile_rack.append(:N)
    @tile_rack.append(:N)
    @tile_rack.append(:Y)
    @tile_rack.append(:Y)
    word = @tile_rack.remove_word("funNY")

    assert_equal false, @tile_rack.tiles.empty?
    assert_equal [:Y], @tile_rack.tiles
    assert_equal "FUNNY", word.hand
  end
end
