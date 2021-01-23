require "spellchecker"
require "tempfile"

module RubyBabble
  class Babble
    def intialize
      @tile_bag = TileBag.new
      @tile_rack = TileRack.new
      @word = Word.new
      @score = 0
      @guess = ""
    end

    def run
      puts "Welcome to RubyBabble"
      until @guess == ":quit" do
        populate_tile_rack
        puts @tile_rack.hand
        puts "Please guess a word using the above letters"
        @guess = gets
        if @guess == ":quit"
          puts "Thanks for playing, #{get_score}"
          next
        else if not Spellchecker::check(@guess)[0][:correct]
          puts "Not a valid word"
        else if not @tile_rack.has_tiles_for?(@guess)
          puts "Not enough tiles"
        else
          @word = @tile_rack.remove_word(@gues)
          @score += @word.score
          puts "You made #{@word} for #{@word.score} points"
        end
        puts get_score
      end
    end

    private

    def populate_tile_rack
      until @tile_rack.number_of_tiles_needed == 0 do
        @tile_rack.append.(@tile_bag.draw_tile)
      end
    end

    def get_score
      "total score: " + @score
    end

  end
end

Babble.new.run
