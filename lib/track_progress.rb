# frozen_string_literal: true

require_relative "track_progress/version"
require 'colorize'

module TrackProgress
  class Error < StandardError; end
  # Your code goes here...

  def self.calculate_progress(n, total, bar_length = 40)
    progress = (n.to_f / total)
    filled_length = (progress * bar_length).round
    bar = '=' * filled_length
    empty_bar = ' ' * (bar_length - filled_length)
    "[#{bar}#{empty_bar}] #{(progress * 100).truncate(2)}%\r".colorize(:cyan)
  end
end
