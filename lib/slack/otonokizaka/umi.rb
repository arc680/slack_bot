module LoveLive
  class Umi < Idol
    class << self
      def name
        '園田海未'
      end

      def icon
        'https://raw.githubusercontent.com/arc680/slack_bot/master/image/twitter2nd_umi.jpg'
      end
    end

    Muse.client.on :message do |data|
      if data['channel'] == Utils.get_channel_id('arc680_develop') && data['type'] == 'message' && data['subtype'] != 'bot_message'
        self.speak(data['channel'], "<@#{data['user']}> ")
      end
    end
  end
end