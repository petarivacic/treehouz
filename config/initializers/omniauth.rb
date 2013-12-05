OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '535720843130848', '1eb319dee0175925cfadfe72a99393db'
end