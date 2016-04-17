module LoveLive
  class Nico < Idol
    class << self
      def name
        '矢澤にこ'
      end

      def icon
        'https://raw.githubusercontent.com/arc680/slack_bot/master/image/twitter2nd_nico.jpg'
      end
    end

    Muse.client.on :message do |data|
      if data['channel'] == '#arc680_develop' && data['type'] == 'message' && data['subtype'] != 'bot_message'
        self.speak(data['channel'], "<@#{data['user']}> ")
      end
    end
  end
end