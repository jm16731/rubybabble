require_relative "../../tile_rack.rb"
require "minitest/autorun"
include RubyBabble

class TestNumberOfTilesNeeded < Minitest::Test
  def setup
    @tile_rack = TileRack.new
  end

  def test_empty_tile_rack_should_need_max_tiles
    assert_equal 7, @tile_rack.number_of_tiles_needed
  end

  def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
    @tile_rack.append(:E)
    assert_equal 6, @tile_rack.number_of_tiles_needed
  end

  def test_tile_rack_with_several_tiles_should_need_some_tiles
    @tile_rack.append(:A)
    @tile_rack.append(:E)
    @tile_rack.append(:O)
    assert_equal 4, @tile_rack.number_of_tiles_needed
  end

  def test_that_full_tile_rack_doesnt_need_any_tiles
    @tile_rack.append(:A)
    @tile_rack.append(:E)
    @tile_rack.append(:O)
    @tile_rack.append(:A)
    @tile_rack.append(:E)
    @tile_rack.append(:O)
    @tile_rack.append(:O)
    assert_equal 0, @tile_rack.number_of_tiles_needed
  end
end
