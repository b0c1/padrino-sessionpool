class Racktest < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  #disable :sessions
  use Rack::Session::Pool, :key => settings.session_key, :secret => settings.session_secret


end