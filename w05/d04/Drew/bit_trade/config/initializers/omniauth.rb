OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['778764795485445'], ENV['0165f30101163aa5f019f765a8dd8b47']
end