# encoding: utf-8
# Use this hook to configure WeixinRailsMiddleware bahaviors.
WeixinRailsMiddleware.configure do |config|

  ## NOTE:
  ## If you config all them, it will use `weixin_token_string` default

  ## Config public_account_class if you SAVE public_account into database ##
  # Th first configure is fit for your weixin public_account is saved in database.
  # +public_account_class+ The class name that to save your public_account
  # config.public_account_class = "PublicAccount"

  ## Here configure is for you DON'T WANT TO SAVE your public account into database ##
  # Or the other configure is fit for only one weixin public_account
  # If you config `weixin_token_string`, so it will directly use it
  config.weixin_token_string = ENV['WECHAT_TOKEN']
  # using to weixin server url to validate the token can be trusted.
  config.weixin_secret_string = ENV['WECHAT_APP_SECRET']
  # 加密配置，如果需要加密，配置以下参数
  # config.encoding_aes_key = 'cf0ef6401b499f58f3a4d741593af76e6a25e5f623f'
  # config.app_id = ENV['WECHAT_APPID']

  ## You can custom your adapter to validate your weixin account ##
  # Wiki https://github.com/lanrion/weixin_rails_middleware/wiki/Custom-Adapter
  # config.custom_adapter = "MyCustomAdapter"

end
