module LoveLive
  class Hanayo < Idol
    class << self
      def name
        '小泉花陽'
      end

      def icon
        'https://raw.githubusercontent.com/arc680/slack_bot/master/image/twitter2nd_hanayo.jpg'
      end
    end

    Muse.client.on :message do |data|
      if data['type'] == 'message' && data['subtype'] != 'bot_message'
      && data['channel'] == Utils.get_channel_id('arc680_develop')
        self.speak(data['channel'], "<@#{data['user']}> ")
      end
    end
  end
end