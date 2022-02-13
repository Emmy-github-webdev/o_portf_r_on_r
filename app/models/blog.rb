# frozen_string_literal: true

class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
