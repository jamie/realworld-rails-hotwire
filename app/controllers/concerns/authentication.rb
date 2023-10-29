module Authentication
  # Thanks to Joe Masilotti https://twitter.com/joemasilotti/status/1717406537352945874
  extend ActiveSupport::Concern

  included do
    helper_method :current_user, :user_signed_in?
  end

  def sign_in(user)
    Current.user = user
    reset_session
    cookies.encrypted.permanent[:user_id] = user.id
  end

  def sign_out
    Current.user = nil
    reset_session
    cookies.delete(:user_id)
  end

  def authenticate_user!
    if current_user.blank?
      redirect_to new_session_path, notice: "You need to sign in to continue." # TODO: i18n
    end
  end

  private

  def current_user
    Current.user ||= authenticate_user_from_session
  end

  def user_signed_in?
    current_user.present?
  end

  def authenticate_user_from_session
    User.find_by(id: cookies.encrypted[:user_id])
  end
end
