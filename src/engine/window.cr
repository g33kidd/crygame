require "crsfml"
require "gl"

class Window

  getter width
  getter height

  def initialize(width, height, title)
    @width = width
    @height = height
    @window = SF::RenderWindow.new(SF.video_mode(width, height), title)
  end

  def close_window
    if self.is_open?
      @window.close
    end
  end

  def is_open?
    @window.open?
  end

  def clear(color)
    @window.clear(color)
  end

  def display
    @window.display
  end

  def poll_window_events
    while event = @window.poll_event
      if event.type == SF::Event::Closed
        self.close_window
      elsif event.type == SF::Event::Resized
        # adjust the viewport when the window is resized.
        GL.viewport(0, 0, event.size.width, event.size.height)
      end
    end
  end

end
