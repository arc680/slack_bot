module LoveLive
  class Maki < Idol
    class << self
      def name
        '西木野真姫'
      end

      def icon
        'https://raw.githubusercontent.com/arc680/slack_bot/master/image/twitter2nd_maki.jpg'
      end
    end

    Muse.client.on :message do |data|
      if data['channel'] == '#arc680_develop' && data['type'] == 'message' && data['subtype'] != 'bot_message'
        self.speak(data['channel'], "<@#{data['user']}> ")
      end
    end
  end
end