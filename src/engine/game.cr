require "crsfml"
require "gl"
require "./window.cr"

class Game

  getter width
  getter height
  getter name

  def initialize(width, height, name)
    @width = width
    @height = height
    @name = name
    @window = create_window(width, height, name)
  end

  # def start
  #   while @window.is_open?
  #     @window.poll_window_events
  #     @window.clear SF::Color::Black
  #
  #     # The game loop
  #     game_loop
  #     # The game loop
  #
  #     @window.display()
  #   end
  # end

  # Hacky for now, just to test the concept. Unfinished code is commented.
  def game_loop(&block)
    yield @window
    while @window.is_open?
      @window.poll_window_events
      @window.clear SF::Color::Black
      yield # THE ACTUAL GAME LOOP
      @window.display()
    end
  end

  def draw(object)
    @window.draw(object)
  end

  private def create_window(width, height, title)
    Window.new(width, height, title)
  end

  # def game_loop
  #   puts SF.seconds(0.0)
  #   @@loop.call
  # end
  #
  # def main_loop(&block)
  #   @@loop = block.call
  # end

  # Currently only supports one loop, but that will change.
  # Mainly so you would be able to separate your code and still not have
  # to worry about the main loop. Game will take care of loops, settings,
  # events, etc... But we will know about them. Just a thought.
  # def add_loop(&block)
  #   @@loop = block.to_s
  # end

end
