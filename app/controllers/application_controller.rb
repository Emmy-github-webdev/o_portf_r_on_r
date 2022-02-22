# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseWhitelist 
  include SetSource 
end
