require "crsfml"

class CryGame::Graphics::Window < SF::RenderWindow

  def initialize(width, height)
    super(SF.video_mode(width, height), "Test Window")
  end

  def poll_window_events
    while event = poll_event
      if event.type == SF::Event::Closed
        close
      end
    end
  end

end
