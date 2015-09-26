require "./util/*"

module CryGame
  extend self

  module Util
    # various util stuff
  end

  def debug(string, type)
    puts "\n[#{type.upcase}]: #{string}\n"
  end
end
