require "crsfml"
require "gl"
require "./ui/window"

def gl_color(color: SF::Color)
  GL.color3d(color.r / 255.0, color.g / 255.0, color.b / 255.0)
end

class Cube
  getter front, back, left, right, top, bottom
  def initialize
    @front = SF.color(0xC41E3Affu32)
    @back = SF.color(0xFF5800ffu32)
    @left = SF.color(0xDDDDDDffu32)
    @right = SF.color(0xFFD500ffu32)
    @top = SF.color(0x0051BAffu32)
    @bottom = SF.color(0x009E60ffu32)
  end
  def move_right
    @front, @left, @back, @right = @left, @back, @right, @front
  end
  def move_left
    @front, @right, @back, @left = @right, @back, @left, @front
  end
  def move_up
    @front, @top, @back, @bottom = @top, @back, @bottom, @front
  end
  def move_down
    @front, @bottom, @back, @top = @bottom, @back, @top, @front
  end
end

WIDTH = 600
HEIGHT = 600
TITLE = "Test Game"

SIZE = 0.8

window = Window.new(WIDTH, HEIGHT, TITLE)
# window = screen.window

while window.is_open?

  window.poll_window_events

  window.window.clear SF::Color::Black

  GL.begin_ GL::TRIANGLES
    GL.color3f(0.0f32, 1.0f32, 0.0f32); GL.vertex2f(-1.0f32,  1.0f32)
    GL.color3f(1.0f32, 0.5f32, 0.0f32); GL.vertex2f( 1.0f32,  0.0f32)
    GL.color3f(0.0f32, 0.5f32, 1.0f32); GL.vertex2f( 0.0f32, -1.0f32)
  GL.end_

  window.window.display()

end
