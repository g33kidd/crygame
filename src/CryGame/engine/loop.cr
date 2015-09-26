require "crsfml"

class CryGame::Loop

  getter blocks

  def initialize(@window)
  end

  # Adds a Block to an array?
  def add(&block)
    # @blocks << block
  end

  def update(elapsed)
    puts elapsed.as_seconds

    # puts @blocks.to_s
    # @blocks.each do |block|
    #   block.call
    # end
  end

end
