require "crsfml"

class CryGame::Window < SF::RenderWindow

  def initialize(title, width, height)
    super(SF.video_mode(width, height), title)
  end

  def update
    self.poll_window_events
  end

  def poll_window_events
    while event = poll_event
      if event.type == SF::Event::Closed
        close
      end
    end
  end

end
