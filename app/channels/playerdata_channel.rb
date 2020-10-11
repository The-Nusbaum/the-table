# app/channels/playerdata_channel.rb
class PlayerdataChannel < ApplicationCable::Channel
  def subscribed
    stream_from "playerdata_channel#{params[:character]}"
    logger.debug '==================='
  end

  def received(data) 
    logger.debug '>>>>>>>>>>>>>>>>>'
    logger.debug data.inspect
    logger.debug '<<<<<<<<<<<<<<<<<'
    # PlayerdataChannel.broadcast_to(@player, {player: @player})
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
