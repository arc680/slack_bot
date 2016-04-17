module LoveLive
  class Kotori < Idol
    class << self
      def name
        '南ことり'
      end

      def icon
        'https://raw.githubusercontent.com/arc680/slack_bot/master/image/twitter2nd_kotori.jpg'
      end
    end

    Muse.client.on :message do |data|
      if data['channel'] == '#arc680_develop' && data['type'] == 'message' && data['subtype'] != 'bot_message'
        self.speak(data['channel'], "<@#{data['user']}> ")
      end
    end
  end
end