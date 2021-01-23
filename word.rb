module RubyBabble
  class Word < TileGroup
    def initialize
      super()
    end

    def score
      score = 0
      @tiles.each {|tile| score += TileBag.points_for(tile)}
      score
    end
  end
end
