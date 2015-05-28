CommunityEngine::Application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1503333586599184', '258ca59ed9352923034291c8354172a1'
  provider  :instagram, 'c20f38aa0c4d47b882c6fc407d594631', '7e8931b162154140aca968a8161ee923'
end
