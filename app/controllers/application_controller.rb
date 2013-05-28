# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base  
  before_filter :store_location

  def store_location
    # store last url as long as it isn't a /users path
    if !request.xhr?
      session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
    end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end
end
