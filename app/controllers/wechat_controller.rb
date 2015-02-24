class WechatController < ApplicationController
  wechat_responder

  on :text do |request, content|
    request.reply.text "echo: #{content}"
  end
end
