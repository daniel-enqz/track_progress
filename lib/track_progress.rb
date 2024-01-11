# frozen_string_literal: true

require_relative "track_progress/version"
require 'colorize'

module TrackProgress
  class Error < StandardError; end
  # Your code goes here...

  def self.display_inline_progress(current:, total:, bar_length: 20, color: :green)
    progress = (current.to_f / total)
    filled_length = (progress * bar_length).round
    bar = '=' * filled_length
    empty_bar = ' ' * (bar_length - filled_length)
    p "[#{bar}#{empty_bar}] #{(progress * 100).truncate(2)}%\r".colorize(color)
  end
end
