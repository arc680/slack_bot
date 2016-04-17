module LoveLive
  class Eri < Idol
    class << self
      def name
        '絢瀬絵里'
      end

      def icon
        'https://raw.githubusercontent.com/arc680/slack_bot/master/image/twitter2nd_eri.jpg'
      end
    end

    Muse.client.on :message do |data|
      if data['channel'] == '#arc680_develop' && data['type'] == 'message' && data['subtype'] != 'bot_message'
        self.speak(data['channel'], "<@#{data['user']}> ")
      end
    end
  end
end