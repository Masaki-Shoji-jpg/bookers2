class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  #ログイン後の後の移動先
  def after_authentication_url
    about_path
  end
  #ログアウト後の移動先
  def after_logout_url
    about_path
  end
end
