class Admin < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers
  register Padrino::Admin::AccessControl


  set :login_page, "/admin/sessions/new"

  #disable :sessions
  use Rack::Session::Pool, :key => settings.session_key, :secret => settings.session_secret
  disable :store_location

  access_control.roles_for :any do |role|
    role.protect "/"
    role.allow "/sessions"
  end

  access_control.roles_for :admin do |role|
    role.project_module :accounts, "/accounts"
  end
end
