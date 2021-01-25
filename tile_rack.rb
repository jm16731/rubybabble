require_relative "tile_group.rb"
require_relative "word.rb"
require "set"

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
      #textArray = text.upcase.chars.sort
      #hand.each_char {|char|
      #  textArray.delete_at(textArray.index(char))
      #}
      #textArray.empty?
    end

    def remove_word(text)
      word = Word.new

      subarray = []
      text.each_char {|char| subarray.append(char); remove(char)}
      subarray.each {|char| word.append(char)}
      word
    end
  end
end
