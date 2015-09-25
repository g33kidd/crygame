require "crsfml"

class Game

  getter window, width, height, name, gl_context

  def initialize(width, height, name)
    @window = SF::RenderWindow width: width, height: height, title: name
  end

end
