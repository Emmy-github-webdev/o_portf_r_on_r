# frozen_string_literal: true

class Portfolio < ApplicationRecord
  has_many :technologies
accepts_nested_attributes_for :technologies, 
    reject_if: lambda{ |attrs| attrs['name'].blank? }
  include Placeholder

  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  #initialize scope method 1
  def self.reactjs
    where(subtitle: 'ReactJS')
  end

  def self.by_position
    order("position ASC")    
  end
  
  #initialize scope method 2
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}

  # Add default values
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||=  Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
  
end
