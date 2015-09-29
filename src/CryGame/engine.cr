require "crsfml"
require "gl"

class CryGame::Engine

  def initialize
    @window = CryGame::Graphics::Window.new(600, 600)
  end

end
