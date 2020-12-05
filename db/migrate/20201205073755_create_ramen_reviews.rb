class CreateRamenReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :ramen_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ramen_shop, null: false, foreign_key: true
      t.string :content
      t.integer :score

      t.timestamps
    end
  end
end
