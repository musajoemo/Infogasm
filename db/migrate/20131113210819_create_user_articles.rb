class CreateUserArticles < ActiveRecord::Migration
  def change
    create_table :user_articles do |t|
      t.string :url
      t.string :css_selector

      t.timestamps
    end
  end
end
