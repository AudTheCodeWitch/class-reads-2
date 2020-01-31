class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.string :text
      t.integer :rating

      t.timestamps
    end
  end
end
