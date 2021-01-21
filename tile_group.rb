module RubyBabble
  class TileGroup
    attr_accessor :tiles

    def initialize
      @tiles = []
    end

    def append(tile)
      if tile.is_a? String
        tile = tile.upcase.to_sym
      end
      @tiles.append(tile)
    end

    def remove(tile)
      if tile.is_a? String
        tile = tile.upcase.to_sym
      end
      @tiles.delete_at(@tiles.index(tile))
    end

    def hand
      word = ""
      @tiles.each {|tile| word += tile.to_s}
      word
    end
  end
end
