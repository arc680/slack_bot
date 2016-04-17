require 'slack'

module Utils
  def get_channel_id(channel_name)
    channel_id = ''
    c_list = Slack.channels_list
    p c_list
    if c_list['ok']
      c_list['channels'].each do |channel|
        channel_id = channel['id']  if channel['name'] == channel_name 
      end
    end
    
    channel_id
  end
end