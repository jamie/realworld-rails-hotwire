module ApplicationHelper
  def current_user
    if session[:user_id]
      user = User.find(session[:user_id])
      session.delete(:user_id) unless user
      user
    end
  end
end
