require "crsfml"

class CryGame::Window

  def initialize(width, height, title)
    @window = SF::RenderWindow.new(SF.video_mode(width, height), title)
  end

  def set_title(title: String)
    if !title.empty?
      @window.title = title
    end
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
    # TODO: Move events to separate class
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
