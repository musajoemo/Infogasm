class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.string :name
      t.string :interests
      t.text   :bio
      t.string :twitter

      t.timestamps
    end
  end
end
