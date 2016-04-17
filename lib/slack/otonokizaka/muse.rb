require 'singleton'

module LoveLive
  class Muse
    include Singleton
    attr_reader :client

    def self.start
      instance.start
    end

    def self.client
      instance.client
    end

    def initialize
      Slack.configure {|config| config.token = TOKEN }
      @client = Slack.realtime
    end

    def start
      @client.start
    end
  end
end