require "crsfml"
require "gl"
require "./engine/*"
require "./graphics.cr"
require "./util.cr"

class CryGame::Engine

  # getter game_loop, window

  def initialize
    @running = false
    @window = CryGame::Graphics::Window.new(600, 600)
    @game_loop = CryGame::Loop.new(@window)
    CryGame.debug("Game Starting", "info")
  end

  def start
    @running = true
    clock = SF::Clock.new
    loop do
      elapsed = clock.restart

      @window.poll_window_events
      @window.clear SF::Color::Black
      @game_loop.update(elapsed)
      @window.display

      break if !@window.open?
    end
  end

  def update(&block)
    if !@running
      @game_loop.add(&block)
    end
  end

end
