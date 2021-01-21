require_relative "../../tile_group.rb"
require "minitest/autorun"
include RubyBabble

class TestHand < MiniTest::Test
  def setup
    @tile_group = TileGroup.new
  end

  def test_convert_empty_group_to_string
    assert_equal "", @tile_group.hand
  end

  def test_convert_single_tile_group_to_string
    @tile_group.append(:A)
    assert_equal "A", @tile_group.hand
  end

  def test_convert_multi_tile_group_to_string
    @tile_group.append(:A)
    @tile_group.append(:B)
    @tile_group.append(:C)
    @tile_group.append(:D)
    @tile_group.append(:E)
    assert_equal "ABCDE", @tile_group.hand
  end

  def test_convert_multi_tile_group_with_duplicates_to_string
    @tile_group.append(:F)
    @tile_group.append(:U)
    @tile_group.append(:N)
    @tile_group.append(:N)
    @tile_group.append(:Y)
    assert_equal "FUNNY", @tile_group.hand
  end
end
