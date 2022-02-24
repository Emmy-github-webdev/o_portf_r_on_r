# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = OgahViewTool::Render.copyright 'Emmanuel Ogah', 'All rights reserved'
  end
end

module OgahViewTool
  class Render
    def self.copyright(name, msg)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end  
  end
end
