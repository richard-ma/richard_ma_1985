class WechatController < ApplicationController
  def index
    if params['echostr']
      p params['echostr']
    else
      p 'hello, This is richard-ma-1985'
    end
  end

  wechat_responder

  on :text do |request, content|
    request.reply.text "echo: #{content}"
  end
end
