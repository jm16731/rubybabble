module RubyBabble
  class TileGroup
    attr_accessor :tiles

    def initialize
      @tiles = []
    end

    def append(tile)
      @tiles.append(tile)
    end

    def remove(tile)
      @tiles.delete(tile)
    end

    def hand
    end
  end
end
