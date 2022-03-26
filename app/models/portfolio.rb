# frozen_string_literal: true

class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  validates_presence_of :title, :subtitle, :body

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
  
  # initialize scope method 1
  def self.reactjs
    where(subtitle: 'ReactJS')
  end

  def self.by_position
    order('position ASC')
  end

  # initialize scope method 2
  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
