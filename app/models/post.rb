class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  has_many :favorites, dependent: :destroy
  has_many :favorited_by, through: :favorites, source: :user

  def body_html
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)
    markdown.render(body || "").html_safe
  end
end
