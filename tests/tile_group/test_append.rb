require_relative "../../tile_group.rb"
require "minitest/autorun"
include RubyBabble

class TestAppend < MiniTest::Test
  def setup
    @tile_group = TileGroup.new
  end

  def test_append_one_tile
    @tile_group.append(:E)
    assert_equal 1, @tile_group.tiles.length
    assert_equal :E, @tile_group.tiles[0]
  end

  def test_append_many_tiles
    @tile_group.append(:A)
    @tile_group.append(:E)
    @tile_group.append(:I)
    @tile_group.append(:O)
    @tile_group.append(:U)
    assert_equal 5, @tile_group.tiles.length
    assert_equal :A, @tile_group.tiles[0]
    assert_equal :E, @tile_group.tiles[1]
    assert_equal :I, @tile_group.tiles[2]
    assert_equal :O, @tile_group.tiles[3]
    assert_equal :U, @tile_group.tiles[4]
  end

  def test_append_duplicate_tiles
    @tile_group.append(:E)
    @tile_group.append(:E)
    @tile_group.append(:E)
    @tile_group.append(:E)
    @tile_group.append(:E)
    assert_equal 5, @tile_group.tiles.length
    assert_equal :E, @tile_group.tiles[0]
    assert_equal :E, @tile_group.tiles[1]
    assert_equal :E, @tile_group.tiles[2]
    assert_equal :E, @tile_group.tiles[3]
    assert_equal :E, @tile_group.tiles[4]
  end
end
