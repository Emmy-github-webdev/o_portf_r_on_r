# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseWhitelist

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end
  
end
