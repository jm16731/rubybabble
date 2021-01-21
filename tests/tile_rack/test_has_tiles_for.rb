require_relative "../../tile_rack.rb"
require "minitest/autorun"
include RubyBabble

class TestHasTilesFor < Minitest::Test
  def setup
    @tile_rack = TileRack.new
    #@tile_rack.append(:A)
    #@tile_rack.append(:X)
    #@tile_rack.append(:E)
    #@tile_rack.append(:H)
    #@tile_rack.append(:E)
    #@tile_rack.append(:A)
    #@tile_rack.append(:D)
  end

  def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
    @tile_rack.append(:A)
    @tile_rack.append(:X)
    @tile_rack.append(:E)
    assert_equal true, @tile_rack.has_tiles_for?("axe")
  end

  def test_rack_has_needed_letter_when_letters_are_not_in_order_no_duplicates
    @tile_rack.append(:X)
    @tile_rack.append(:A)
    @tile_rack.append(:E)
    assert_equal true, @tile_rack.has_tiles_for?("aXe")
  end

  def test_rack_doesnt_contain_any_needed_letters
    @tile_rack.append(:A)
    @tile_rack.append(:X)
    @tile_rack.append(:E)
    assert_equal false, @tile_rack.has_tiles_for?("laugh")
  end

  def test_rack_contains_some_but_not_all_needed_letters
    @tile_rack.append(:A)
    @tile_rack.append(:X)
    @tile_rack.append(:E)
    assert_equal false, @tile_rack.has_tiles_for?("ax")
  end

  def test_rack_contains_a_word_with_duplicate_letters
    @tile_rack.append(:F)
    @tile_rack.append(:U)
    @tile_rack.append(:N)
    @tile_rack.append(:N)
    @tile_rack.append(:Y)
    assert_equal true, @tile_rack.has_tiles_for?("fUnNy")
  end

  def test_rack_doesnt_contain_enough_duplicate_letters
    @tile_rack.append(:F)
    @tile_rack.append(:U)
    @tile_rack.append(:N)
    @tile_rack.append(:Y)
    assert_equal false, @tile_rack.has_tiles_for?("fUnNy")
  end
end
