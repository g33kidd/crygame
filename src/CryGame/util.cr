require "./util/*"

module CryGame
  extend self

  module Util
  end

  def debug(string, type)
    puts "\n[#{type.upcase}]: #{string}\n"
  end
end
