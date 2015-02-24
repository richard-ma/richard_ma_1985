class WechatsController < ApplicationController
  def index
    if params['echostr']
      @echostr = params['echostr']
    else
      @echostr = 'hello, This is richard-ma-1985'
    end

    render layout: "wechats"
  end

  wechat_responder

  on :text do |request, content|
    request.reply.text "echo: #{content}"
  end
end
