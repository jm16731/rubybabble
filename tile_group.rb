module RubyBabble
  class TileGroup
    attr_accessor :tiles

    def initialize
      @tiles = []
    end

    def append(tile)
      @tiles.append(tile)
      #@tiles.append(tiles.to_sym)
    end

    def remove(tile)
      #tile.to_sym
      @tiles.delete_at(@tiles.index(tile))
    end

    def hand
      word = ""
      @tiles.each {|tile| word += tile.to_s}
      word
    end
  end
end
