# frozen_string_literal: true
class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table(:articles) do |t|
      t.string(:title)
      t.string(:slug, index: true)
      t.text(:body)
      t.string(:description)
      t.integer(:favorites_count)

      t.timestamps
    end
  end
end
