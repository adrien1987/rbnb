class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :status
      t.datetime :date
      t.float :duration
      t.string :city
      t.string :zipcode
      t.string :address
      t.text :description
      t.references :teacher, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
