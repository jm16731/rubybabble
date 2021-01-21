module RubyBabble
  class TileRack < TileGroup
    def initialize
      super()
    end

    def number_of_tiles_needed
      7 - @tiles.length
    end

    def has_tiles_for?(text)
      hand.chars.sort == text.upcase.chars.sort
    end

    def remove_word(text)
      Word word = Word.new

      subarray = []
      text.each {|char| subarray.append(char); remove(char)}
      subarray.each {|char| word.append(char)}
      word
    end
  end
end
