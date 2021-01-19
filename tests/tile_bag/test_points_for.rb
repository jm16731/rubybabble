require "../../tile_bag.rb"
require "minitest/autorun"

class TestPointsFor < MiniTest::Test
  def setup
    @tile_bag = RubyBabble::TileBag.new
  end

  def test_confirm_point_values
    assert_equal 1, @tile_bag.points_for(:E)
    assert_equal 1, @tile_bag.points_for(:A)
    assert_equal 1, @tile_bag.points_for(:I)
    assert_equal 1, @tile_bag.points_for(:O)
    assert_equal 1, @tile_bag.points_for(:N)
    assert_equal 1, @tile_bag.points_for(:R)
    assert_equal 1, @tile_bag.points_for(:T)
    assert_equal 1, @tile_bag.points_for(:L)
    assert_equal 1, @tile_bag.points_for(:S)
    assert_equal 1, @tile_bag.points_for(:U)
    assert_equal 2, @tile_bag.points_for(:D)
    assert_equal 2, @tile_bag.points_for(:G)
    assert_equal 3, @tile_bag.points_for(:B)
    assert_equal 3, @tile_bag.points_for(:C)
    assert_equal 3, @tile_bag.points_for(:M)
    assert_equal 3, @tile_bag.points_for(:P)
    assert_equal 4, @tile_bag.points_for(:F)
    assert_equal 4, @tile_bag.points_for(:H)
    assert_equal 4, @tile_bag.points_for(:V)
    assert_equal 4, @tile_bag.points_for(:W)
    assert_equal 4, @tile_bag.points_for(:Y)
    assert_equal 5, @tile_bag.points_for(:K)
    assert_equal 8, @tile_bag.points_for(:J)
    assert_equal 8, @tile_bag.points_for(:X)
    assert_equal 10, @tile_bag.points_for(:Q)
    assert_equal 10, @tile_bag.points_for(:Z)
  end
end
