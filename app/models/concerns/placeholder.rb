# frozen_string_literal: true

module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}X#{width}"
  end
end
