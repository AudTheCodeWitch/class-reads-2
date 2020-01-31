class CreateReadingResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :reading_responses do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.integer :page
      t.string :feeling
      t.string :thoughts

      t.timestamps
    end
  end
end
