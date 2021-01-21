require_relative "../../tile_group.rb"
require "minitest/autorun"
include RubyBabble

class TestAppend < MiniTest::Test
  def setup
    @tile_group = TileGroup.new
  end
end
