# frozen_string_literal: true

module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Emmanuel Ogah | Full-Stack Software Developer'
    @seo_keywords = 'Emmanuel Ogah portfolio'
  end
end
