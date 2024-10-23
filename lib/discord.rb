# frozen_string_literal: true

require "potter"

require_relative "discord/version"
require_relative "discord/resource"
require_relative "discord/endpoints"
require_relative "discord/voice"
require_relative "discord/channel"

module Discord
  class Error < StandardError; end
  # Your code goes here...
end
