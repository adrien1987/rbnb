class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :note
      t.text :content
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
