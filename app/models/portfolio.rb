# frozen_string_literal: true

class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.reactjs
    where(subtitle: 'ReactJS')
  end
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}
end
