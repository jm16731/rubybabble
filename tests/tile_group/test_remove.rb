require_relative "../../tile_group.rb"
require "minitest/autorun"
include RubyBabble

class TestRemove < MiniTest::Test
  def setup
    @tile_group = TileGroup.new
    @tile_group.append(:A)
    @tile_group.append(:E)
    @tile_group.append(:I)
    @tile_group.append(:O)
    @tile_group.append(:U)
  end

  def test_remove_only_tile
    @tile_group_single = TileGroup.new
    @tile_group_single.append(:E)
    @tile_group_single.remove(:E)
    assert_equal true, @tile_group_single.tiles.empty?
  end

  def test_remove_first_tile_from_many
    @tile_group.remove(:A)
    assert_equal [:E, :I, :O, :U], @tile_group.tiles
  end

  def test_remove_last_tile_from_many
    @tile_group.remove(:U)
    assert_equal [:A, :E, :I, :O], @tile_group.tiles
  end

  def test_remove_middle_tile_from_many
    @tile_group.remove(:I)
    assert_equal [:A, :E, :O, :U], @tile_group.tiles
  end

  def test_remove_multiple_tiles
    @tile_group.remove(:A)
    @tile_group.remove(:O)
    @tile_group.remove(:E)
    assert_equal [:I, :U], @tile_group.tiles
  end

  def test_make_sure_duplicates_are_not_removed
    @tile_group.append(:E)
    assert_equal [:A, :E, :I, :O, :U, :E], @tile_group.tiles
    @tile_group.remove(:E)
    assert_equal [:A, :I, :O, :U, :E], @tile_group.tiles
  end
end
