class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string		:url
    	t.string		:title
    	t.text			:body
    	t.string		:byline
    	t.integer		:asset_id
    	t.string		:source

      t.timestamps
    end
  end
end
