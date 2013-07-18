class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_account
    Account.find(1)
  end
  helper_method :current_account

  def current_account_id
    1
  end
  helper_method :current_account_id
end
