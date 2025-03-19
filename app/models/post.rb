class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  def body_html
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)
    markdown.render(body).html_safe
  end
end
