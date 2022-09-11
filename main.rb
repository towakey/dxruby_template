require "dxruby"
require 'dotenv'


class GameMain
    def initialize
        Dotenv.load

        @TITLE = ENV["GAME_TITLE"]

        Window.width = ENV["DISPLAY_WIDTH"].to_i
        Window.height = ENV["DISPLAY_HEIGHT"].to_i
        
        Window.caption = @TITLE
    end
    def draw
    end
    def loop
        Window.loop do
            self.draw
        end
    end
end

game = GameMain.new

game.loop
