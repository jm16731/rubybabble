require_relative "../../tile_rack.rb"
require "minitest/autorun"
include RubyBabble

class TestHasTilesFor < Minitest::Test
  def setup
    @tile_rack = TileRack.new
  end

  def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
  end

  def test_rack_has_needed_letter_when_letters_are_not_in_order_no_duplicates
  end

  def test_rack_doesnt_contain_any_needed_letters
  end

  def test_rack_contains_some_but_not_all_needed_letters
  end

  def test_rack_contains_a_word_with_duplicate_letters
  end

  def test_rack_doesnt_contain_enough_duplicate_letters
  end
end
