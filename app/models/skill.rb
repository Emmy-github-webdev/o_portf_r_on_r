# frozen_string_literal: true

class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized
end
