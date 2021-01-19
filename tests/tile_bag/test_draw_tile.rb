require_relative "../../tile_bag.rb"
require "minitest/autorun"
include RubyBabble

class TestPointsFor < MiniTest::Test
  def setup
    @tile_bag = TileBag.new
  end

  def test_has_proper_number_of_tiles
    num_of_tiles = 0
    unless @tile_bag.empty?
      @tile_bag.draw_tile
      num_of_tiles += 1
    end
    assert_equal 98, num_of_tiles
  end

  def test_has_proper_tile_distribution
    true_distribution = {E: 12, A: 9, I: 9, O: 8, N: 6, R: 6, T: 6,
      L: 4, S: 4, U: 4, D: 4, G: 3, B: 2, C: 2, M: 2, P: 2,
      F: 2, H: 2, V: 2, W: 2, Y: 2, K: 1, J: 1, X: 1, Q: 1, Z: 1}
    current_distribution = {E: 0, A: 0, I: 0, O: 0, N: 0, R: 0, T: 0,
      L: 0, S: 0, U: 0, D: 0, G: 0, B: 0, C: 0, M: 0, P: 0,
      F: 0, H: 0, V: 0, W: 0, Y: 0, K: 0, J: 0, X: 0, Q: 0, Z: 0}
    unless @tile_bag.empty?
      tile = @tile_bag.draw_tile
      current_distribution[tile] += 1
    end
    assert_equal true_distribution, current_distribution
  end
end
