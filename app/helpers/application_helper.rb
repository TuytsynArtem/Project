module ApplicationHelper
  def login(login)
    session[:login] = login
  end
  def current_user
    session[:login]
  end
end
