Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '424752270996136', '1ebedf29c7d79d541d888cb4e78713d4'
end