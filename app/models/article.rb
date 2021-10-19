# frozen_string_literal: true

class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  Gutentag::ActiveRecord.call(self)

  has_rich_text :content

  has_many :comments, dependent: :destroy

  def tag_list
    tag_names.join(" ")
  end

  def tag_list=(names)
    names.split(" ").each do |name|
      tag_names << name
    end
  end
end
