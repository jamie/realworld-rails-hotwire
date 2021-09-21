# frozen_string_literal: true
class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :comments
end
