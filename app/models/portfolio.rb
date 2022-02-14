# frozen_string_literal: true

class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
end
