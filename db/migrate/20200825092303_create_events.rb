class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :category
      t.string :description
      t.string :location
      t.integer :maximum_users
      t.datetime :date
      t.float :rating
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
