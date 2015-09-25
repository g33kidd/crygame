require "crsfml"

class Window

  getter width
  getter height
  getter window

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

  def poll_window_events
    while event = @window.poll_event
      if event.type == SF::Event::Closed
        self.close_window
      end
    end
  end

end
