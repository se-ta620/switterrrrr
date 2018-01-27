class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.timestamps
    end
  end
end
