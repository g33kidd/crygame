require "crsfml"
require "gl"
require "./engine/*"
require "./graphics.cr"
require "./util.cr"

class CryGame::Engine

  def initialize
    @window = CryGame::Graphics::Window.new(600, 600)
  end

end
